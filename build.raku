#!/usr/bin/env raku
# build.raku — the generator for duo.raku.online, a bilingual reader for
# The Complete Course of the Raku Programming Language.
#
#   rakupp build.raku                    build src -> www
#   rakupp build.raku --clean            remove www/ first
#   rakupp build.raku --toc              print the page sequence and stop
#   rakupp build.raku --check            report alignment damage and stop
#   rakupp build.raku --course=PATH      override the course checkout
#   rakupp build.raku --only=essentials  build one part (for a fast edit loop)
#
# The course is 1531 pages written in Markdown, translated block for block into
# ten other languages. That parallelism is the whole premise of this site: the
# nth paragraph of a page says the same thing in every language, so two of them
# can be laid out as one grid, row by row, and a reader can move between them
# without ever losing their place.
#
# Nothing here reads the course's own Jekyll machinery. It reads the Markdown
# and the table-of-contents YAML, and nothing else.

constant TARGET-EXAMPLES = 8;      # concordance lines kept per word
constant LEX-MIN-LENGTH  = 2;      # shorter "words" are punctuation noise

# ---------------------------------------------------------------------------
# Arguments and configuration
# ---------------------------------------------------------------------------

my %ARGS;
my @rest;
for @*ARGS -> $a {
    if $a.starts-with('--') {
        my $body = $a.substr(2);
        if $body.contains('=') {
            my ($k, $v) = $body.split('=', 2);
            %ARGS{$k} = $v;
        }
        else { %ARGS{$body} = True }
    }
    else { @rest.push($a) }
}

my %SITE = EVAL slurp('src/site.raku');
my $COURSE = (%ARGS<course> // %SITE<course>).Str.subst(/ '/' $ /, '');
my $OUT    = %SITE<out>.Str;
my @LANGS  = @(%SITE<languages>);
my $ONLY   = %ARGS<only> // '';

die "course not found: $COURSE" unless "$COURSE/_data/toc/en.yaml".IO.e;

# ---------------------------------------------------------------------------
# A YAML reader for exactly the shape _data/toc/*.yaml has
#
# The course builds these with YAMLish, which rakupp does not ship. The files
# use a small, regular subset — mappings, sequences of mappings, plain scalars
# and folded (>-) scalars — so a 60-line reader is honest here, and it fails
# loudly rather than guessing if the shape ever grows.
# ---------------------------------------------------------------------------

my @YL;                 # [indent, text] per significant line
my $YP = 0;             # read cursor

sub yaml-unquote(Str $v is copy --> Str) {
    $v = $v.trim;
    if $v.chars >= 2 {
        my $f = $v.substr(0, 1);
        if ($f eq "'" || $f eq '"') && $v.ends-with($f) {
            $v = $v.substr(1, $v.chars - 2);
            $v = $v.subst("''", "'", :g) if $f eq "'";
        }
    }
    $v
}

sub yaml-folded(Int $key-ind --> Str) {
    my @parts;
    while $YP < @YL.elems && @YL[$YP][0] > $key-ind {
        @parts.push: @YL[$YP][1];
        $YP++;
    }
    @parts.join(' ')
}

sub yaml-map(Int $ind) {
    my %h;
    while $YP < @YL.elems && @YL[$YP][0] == $ind {
        my $text = @YL[$YP][1];
        last if $text.starts-with('- ');
        die "yaml: expected 'key: value', got: $text" unless $text.contains(':');
        my ($k, $v) = $text.split(':', 2);
        $k .= trim;
        $v .= trim;
        $YP++;
        if $v eq '>-' || $v eq '>' || $v eq '|' || $v eq '|-' {
            %h{$k} = yaml-folded($ind);
        }
        elsif $v eq '' {
            %h{$k} = yaml-node($ind);
        }
        else {
            %h{$k} = yaml-unquote($v);
        }
    }
    %h
}

sub yaml-seq(Int $ind) {
    my @a;
    while $YP < @YL.elems && @YL[$YP][0] == $ind && @YL[$YP][1].starts-with('- ') {
        # Rewrite the item's own line as an ordinary key at the item's indent,
        # then let yaml-map read it together with the item's remaining keys.
        @YL[$YP] = [$ind + 2, @YL[$YP][1].substr(2)];
        @a.push: yaml-map($ind + 2);
    }
    @a
}

sub yaml-node(Int $parent-ind) {
    return Nil unless $YP < @YL.elems;
    my $ind = @YL[$YP][0];
    # A sequence may sit at its key's own indent — YAML allows it, and the
    # course's TOC uses both forms, sometimes within one section.
    if @YL[$YP][1].starts-with('- ') {
        return $ind >= $parent-ind ?? yaml-seq($ind) !! Nil;
    }
    return Nil unless $ind > $parent-ind;
    yaml-map($ind)
}

sub yaml-load(Str $text) {
    @YL = ();
    for $text.lines -> $raw {
        my $t = $raw.trim;
        next if $t eq '' || $t.starts-with('#');
        $raw ~~ / ^ (' '*) /;
        @YL.push: [ (~$0).chars, $t ];
    }
    $YP = 0;
    yaml-map(0)
}

# ---------------------------------------------------------------------------
# The page sequence
#
# The course's own generator (raku-pages.raku) derives every URL, every title
# and the linear prev/next chain from these YAML files. This mirrors that walk.
# URLs have at most three levels — part/section/topic — and a subpart groups
# sections in the sidebar without appearing in the path.
#
# Two page kinds exist only in the sequence, never in the YAML: each section
# holding exercises gets an `…/exercises` index, and each exercise gets a
# `…/solution`.
# ---------------------------------------------------------------------------

class Page {
    has Str  $.url;                 # 'essentials/strings/quiz', '' for home
    has Str  $.kind;                # part | subpart | section | topic | exercise | exercises | solution | home
    has Str  $.part is rw = '';     # first URL segment
    has Int  $.n    is rw = 0;      # position in the linear sequence
    has Str  $.prev is rw = '';
    has Str  $.next is rw = '';
    has      @.trail is rw;         # ancestor URLs, outermost first
}

my @SEQ;                            # Page objects, in reading order
my %PAGE;                           # url -> Page

sub scan-toc() {
    my $y = yaml-load(slurp("$COURSE/_data/toc/en.yaml"));
    my @stack;

    sub emit(Str $url, Str $kind) {
        return if %PAGE{$url}:exists;
        my $p = Page.new(url => $url, kind => $kind);
        $p.trail = @stack.clone;
        $p.part  = $url.split('/')[0];
        %PAGE{$url} = $p;
        @SEQ.push: $p;
    }

    sub levels(@items, Str $parent, Str $kind) {
        for @items -> %it {
            my $slug = %it<url> // '';
            next unless $slug;
            my $url = $kind eq 'exercise' ?? "$parent/exercises/$slug" !! "$parent/$slug";

            # The first exercise of a section brings its section's index page
            # with it, exactly where raku-pages.raku puts it.
            if $kind eq 'exercise' {
                emit("$parent/exercises", 'exercises');
            }

            emit($url, $kind);

            if $kind eq 'exercise' {
                emit("$url/solution", 'solution');
            }

            @stack.push($url);
            levels(@(%it<items>),     $url, 'topic')    if %it<items>;
            levels(@(%it<exercises>), $url, 'exercise') if %it<exercises>;
            levels(@(%it<quizzes>),   $url, 'quiz')     if %it<quizzes>;
            @stack.pop;
        }
    }

    for @($y<toc>) -> %part {
        my $part-url = %part<url> // '';
        next unless $part-url;
        emit($part-url, 'part');
        @stack.push($part-url);

        for @(%part<items> // []) -> %sub {
            my $sub-slug = %sub<url> // '';
            my $sub-url  = $sub-slug ?? "$part-url/$sub-slug" !! '';
            if $sub-url {
                emit($sub-url, 'subpart');
                @stack.push($sub-url);
            }
            levels(@(%sub<items>),     $part-url, 'section')  if %sub<items>;
            levels(@(%sub<exercises>), $part-url, 'exercise') if %sub<exercises>;
            levels(@(%sub<quizzes>),   $part-url, 'quiz')     if %sub<quizzes>;
            @stack.pop if $sub-url;
        }
        @stack.pop;
    }

}

# Titles are per language; the slugs are shared. Walking each language's YAML
# the same way gives url -> title without depending on the files agreeing on
# the order of their quiz entries (they do not, quite).
sub scan-titles(Str $lang) {
    my %t;
    my $file = "$COURSE/_data/toc/$lang.yaml";
    return %t unless $file.IO.e;
    my $y = yaml-load(slurp($file));

    sub levels(@items, Str $parent, Str $kind) {
        for @items -> %it {
            my $slug = %it<url> // '';
            next unless $slug;
            my $url = $kind eq 'exercise' ?? "$parent/exercises/$slug" !! "$parent/$slug";
            %t{$url} = %it<long_title> // %it<title> // '';
            levels(@(%it<items>),     $url, 'topic')    if %it<items>;
            levels(@(%it<exercises>), $url, 'exercise') if %it<exercises>;
            levels(@(%it<quizzes>),   $url, 'quiz')     if %it<quizzes>;
        }
    }

    for @($y<toc>) -> %part {
        my $part-url = %part<url> // '';
        next unless $part-url;
        %t{$part-url} = %part<long_title> // %part<title> // '';
        for @(%part<items> // []) -> %sub {
            my $sub-slug = %sub<url> // '';
            if $sub-slug {
                %t{"$part-url/$sub-slug"} = %sub<long_title> // %sub<title> // '';
            }
            levels(@(%sub<items>),     $part-url, 'section')  if %sub<items>;
            levels(@(%sub<exercises>), $part-url, 'exercise') if %sub<exercises>;
            levels(@(%sub<quizzes>),   $part-url, 'quiz')     if %sub<quizzes>;
        }
    }
    %t{''} = $y<title> // '';
    %t
}

scan-toc();

# Sweep up anything on disk the TOC never mentions, so a page cannot silently
# fall out of the reader just because someone forgot a YAML entry. These land
# at the end of the sequence; the TOC tree is what a reader actually navigates.
sub collect-orphans() {
    my @found;
    sub walk(Str $dir, Str $rel) {
        for dir($dir) -> $e {
            next unless $e.IO.d;
            my $name = $e.IO.basename;
            next if $name.starts-with('.') || $name.starts-with('_');
            next if @LANGS.first({ .<dir> && .<dir> eq $name });
            my $sub = $rel ?? "$rel/$name" !! $name;
            next if $sub eq 'assets' | 'docs' | 'reports' | 'resources'
                          | 'cache' | 'bin' | 'book-cover' | 'precomp' | 'exercises';
            @found.push($sub) if "$e/index.md".IO.e && !(%PAGE{$sub}:exists);
            walk($e.Str, $sub);
        }
    }
    walk($COURSE, '');
    @found.sort
}

for collect-orphans() -> $url {
    my $p = Page.new(url => $url, kind => 'topic');
    $p.part = $url.split('/')[0];
    $p.trail = [ $url.split('/').head(*-1).join('/') ];
    %PAGE{$url} = $p;
    @SEQ.push: $p;
}

# Subparts group sections in the sidebar but have no Markdown of their own —
# there is nothing to read in parallel there, so they leave the reading
# sequence and survive only as breadcrumb labels.
my @DROPPED = @SEQ.grep({ .url && !"$COURSE/{.url}/index.md".IO.e }).map(*.url);
my %DROPPED = @DROPPED.map({ $_ => True }).Hash;
@SEQ = @SEQ.grep({ !%DROPPED{.url} });

@SEQ = @SEQ.grep({ .url eq '' || .url.starts-with($ONLY) }) if $ONLY;

for @SEQ.kv -> $i, $p {
    $p.n    = $i;
    $p.prev = $i > 0        ?? @SEQ[$i - 1].url !! '';
    $p.next = $i < @SEQ.end ?? @SEQ[$i + 1].url !! '';
}

if %ARGS<toc> {
    say "pages in sequence: ", @SEQ.elems;
    say "grouping-only URLs dropped: ", @DROPPED.elems, " (", @DROPPED.head(4).join(', '), " …)";
    say "first: ", @SEQ.head(3).map({ .url || '(home)' }).join(' -> ');
    say "last:  ", @SEQ.tail(3).map(*.url).join(' -> ');
    exit 0;
}

# ---------------------------------------------------------------------------
# Text helpers
# ---------------------------------------------------------------------------

sub esc(Str $s --> Str) {
    $s.subst('&', '&amp;', :g).subst('<', '&lt;', :g).subst('>', '&gt;', :g)
}

# Prose escaping that leaves the source's own character entities alone. The
# course writes &apos; and friends by hand — escaping the ampersand a second
# time would print the entity instead of the character.
sub esc-text(Str $s --> Str) {
    my $t = esc($s);
    $t = $t.subst(/ '&amp;' (<[a..zA..Z]> <[a..zA..Z0..9]>*) ';' /, { '&' ~ $0 ~ ';' }, :g);
    $t = $t.subst(/ '&amp;#' (\d+) ';' /,                        { '&#' ~ $0 ~ ';' }, :g);
    $t
}

sub esc-attr(Str $s --> Str) { esc($s).subst('"', '&quot;', :g) }

sub json-str(Str $s --> Str) {
    my $e = $s.subst('\\', '\\\\', :g).subst('"', '\\"', :g)
             .subst("\r", '\\r', :g).subst("\n", '\\n', :g).subst("\t", '\\t', :g);
    # A literal </script> inside inlined JSON would close the tag it lives in.
    $e = $e.subst('</', '<\\/', :g);
    '"' ~ $e ~ '"'
}

# ---------------------------------------------------------------------------
# Sentences
#
# The unit a reader's eye actually moves in. 98% of the course's paragraphs
# keep their sentence count through translation, so pairing them is worth the
# trouble; when a pair disagrees the block falls back to whole-paragraph
# pairing and nothing looks broken.
# ---------------------------------------------------------------------------

my %ABBR = @(%SITE<abbreviations>).map({ $_.lc => True }).Hash;

sub split-sentences(Str $text --> List) {
    # Mark every candidate boundary: a terminator, optional closing quote or
    # bracket, whitespace, then something that starts a sentence.
    my $marked = $text.subst(
        / (<[.!?…]> <[.!?…]>* <['"”’»)\]]>?) \s+ (<:Lu> | <[«"„0..9¿¡]> | '`' | '**' | '[' | '*') /,
        { $0 ~ "\x0" ~ $1 }, :g);

    my @raw = $marked.split("\x0");
    return ($text,) if @raw.elems < 2;

    # Re-join the splits that were only abbreviations: "z.B. Der Hund" is one
    # sentence, and German capitalises its nouns, so the uppercase test alone
    # would cut it in two.
    my @out;
    for @raw -> $piece {
        if @out {
            my $prev = @out[*-1];
            $prev ~~ / (\S+) \s* $ /;
            my $tail = $0 ?? (~$0).subst(/ <[.!?…'"”’»)\]]>+ $ /, '') !! '';
            if %ABBR{$tail.lc} || ($tail.chars == 1 && $tail ~~ /<:L>/) {
                @out[*-1] = $prev ~ ' ' ~ $piece;
                next;
            }
        }
        @out.push: $piece;
    }
    @out.grep({ .trim ne '' }).list
}

# ---------------------------------------------------------------------------
# Inline Markdown
# ---------------------------------------------------------------------------

my $LINK-PAGE = '';         # the page currently being rendered, for relatives

# Resolve a Markdown link target against the course's URL space, and decide
# whether it stays on this site or goes back to the course proper.
sub resolve-link(Str $href is copy --> Str) {
    return $href if $href.starts-with('#');
    return $href if $href.contains('://') || $href.starts-with('mailto:');

    my $abs;
    if $href.starts-with('/') {
        $abs = $href.substr(1);
    }
    else {
        my @parts = $LINK-PAGE.split('/').grep({ $_ ne '' });
        for $href.split('/') -> $seg {
            next if $seg eq '' | '.';
            if $seg eq '..' { @parts.pop if @parts }
            else            { @parts.push($seg) }
        }
        $abs = @parts.join('/');
    }
    $abs = $abs.subst(/ '/' $ /, '');
    $abs = $abs.subst(/ '#' .* $ /, '');
    my $frag = $href.contains('#') ?? '#' ~ $href.split('#', 2)[1] !! '';
    return "/$frag" if $abs eq '';

    return "/$abs/$frag" if %PAGE{$abs}:exists && !%DROPPED{$abs};
    "https://course.raku.org/$abs/$frag"
}

sub fmt-basic(Str $seg --> Str) {
    my @out;
    for $seg.split('`').kv -> $idx, $s {
        if $idx %% 2 {
            my $t = esc-text($s);
            $t = $t.subst(/ '**' (<-[*]>+) '**' /, { '<strong>' ~ (~$0) ~ '</strong>' }, :g);
            $t = $t.subst(/ '*' (<-[*]>+) '*' /,   { '<em>' ~ (~$0) ~ '</em>' }, :g);
            # Kramdown's other emphasis. Bounded on both sides so that
            # snake_case_identifiers written in prose survive intact.
            $t = $t.subst(/ <!after <[\w]>> '_' (<-[_]>+) '_' <!before <[\w]>> /,
                          { '<em>' ~ (~$0) ~ '</em>' }, :g);
            @out.push($t);
        }
        else {
            @out.push('<code>' ~ esc($s) ~ '</code>');
        }
    }
    @out.join
}

sub inline(Str $text --> Str) {
    my @links;
    my $protected = $text.subst(/ '[' (<-[\]]>*) ']' '(' (<-[)]>+) ')' /, {
        my $href = resolve-link(~$1);
        my $ext  = $href.contains('://') ?? ' target="_blank" rel="noopener"' !! '';
        @links.push('<a href="' ~ esc-attr($href) ~ '"' ~ $ext ~ '>' ~ fmt-basic(~$0) ~ '</a>');
        'zzLNK' ~ @links.end ~ 'ENDzz'
    }, :g);
    my $body = fmt-basic($protected);
    $body.subst(/ 'zzLNK' (\d+) 'ENDzz' /, { @links[+$0] }, :g)
}

# Plain text of a fragment, for the word index and for speech.
sub plain(Str $text --> Str) {
    my $t = $text.subst(/ '[' (<-[\]]>*) ']' '(' <-[)]>+ ')' /, { ~$0 }, :g);
    $t = $t.subst(/ '`' <-[`]>* '`' /, ' ', :g);
    $t = $t.subst('**', '', :g).subst('*', '', :g);
    $t = $t.subst('&apos;', "'", :g).subst('&quot;', '"', :g).subst('&amp;', '&', :g);
    $t = $t.subst(/ '<' <-[>]>* '>' /, '', :g);
    $t.subst(/ \s+ /, ' ', :g).trim
}

# ---------------------------------------------------------------------------
# Blocks
#
# Chunking is deliberately dumb: blank lines outside a fence, nothing more.
# That is exactly the rule the translations were produced under, which is why
# the nth chunk of a page means the same thing in all eleven languages. Any
# cleverness here — merging, reordering, dropping empties — would be cleverness
# that only one language agreed with.
# ---------------------------------------------------------------------------

sub split-chunks(Str $body --> List) {
    my @chunks;
    my @cur;
    my $fence = False;
    for $body.lines -> $line {
        if $line.starts-with('```') {
            $fence = !$fence;
            @cur.push($line);
            next;
        }
        if $line.trim eq '' && !$fence {
            @chunks.push(@cur.join("\n")) if @cur;
            @cur = ();
        }
        else { @cur.push($line) }
    }
    @chunks.push(@cur.join("\n")) if @cur;
    @chunks.list
}

# One alignable unit of a block: the thing that highlights when its twin in the
# other pane is hovered.
sub seg(Int $i, Str $html --> Str) {
    '<span class="sg" data-s="' ~ $i ~ '">' ~ $html ~ '</span>'
}

# Everything a rendered block needs to reach the browser.
class Block {
    has Str $.kind;
    has Str $.html;
    has Int $.segs;          # alignable units in this block
    has     @.text;          # plain text per segment, for speech and the index
}

sub render-chunk(Str $chunk --> Block) {
    my @lines = $chunk.lines;
    my $first = @lines[0] // '';

    # Fenced code. Both panes show their own, because the string literals inside
    # are translated too — which is a small language lesson of its own.
    if $first.starts-with('```') {
        my $lang = $first.substr(3).trim;
        my @body = @lines[1 .. *].grep({ !$_.starts-with('```') });
        my $code = @body.join("\n");
        my $cls  = $lang ?? ' class="lang-' ~ esc-attr($lang) ~ '"' !! '';
        return Block.new(
            kind => 'code',
            html => '<pre' ~ $cls ~ '><code>' ~ esc($code) ~ '</code></pre>',
            segs => 0,
            text => [],
        );
    }

    # Liquid: the course's own navigation furniture. This site brings its own.
    if $first.starts-with('{%') && @lines.grep({ .trim.starts-with('{%') }).elems == @lines.elems {
        return Block.new(kind => 'skip', html => '', segs => 0, text => []);
    }

    # A kramdown class marker turns the lines under it into a quiz.
    if $first.starts-with('{:.quiz') {
        my $fill = $first.contains('.fill');
        my @rows;
        my @plain;
        my $i = 0;
        for @lines[1 .. *] -> $line {
            next if $line.trim eq '';
            my @f = $line.split('|').map(*.trim);
            my $flag = @f[0] // '';
            my $opt  = @f[1] // '';
            my $note = @f[2] // '';
            my $mark = $fill ?? '' !! ($flag eq '1' ?? ' is-right' !! '');
            my $body = inline($opt);
            $body ~= '<span class="quiz-note">' ~ inline($note) ~ '</span>' if $note;
            @rows.push('<li class="quiz-opt' ~ $mark ~ '">' ~ seg($i, $body) ~ '</li>');
            @plain.push(plain($opt ~ ($note ?? ' ' ~ $note !! '')));
            $i++;
        }
        return Block.new(
            kind => 'quiz',
            html => '<ul class="quiz">' ~ @rows.join ~ '</ul>',
            segs => $i,
            text => @plain,
        );
    }

    # Any other kramdown attribute line: not content.
    if $first.starts-with('{:') && @lines.elems == 1 {
        return Block.new(kind => 'skip', html => '', segs => 0, text => []);
    }

    # Raw HTML the course drops in (the home page's hero, mostly).
    if $first.starts-with('<') {
        return Block.new(kind => 'raw', html => $chunk, segs => 0, text => []);
    }

    # Headings.
    if $first ~~ / ^ ('#'+) ' ' / {
        my $level = (~$0).chars;
        my $text  = $first.substr($level + 1).trim;
        my $tag   = 'h' ~ ($level + 1 > 6 ?? 6 !! $level + 1);
        return Block.new(
            kind => 'h',
            html => "<$tag>" ~ seg(0, inline($text)) ~ "</$tag>",
            segs => 1,
            text => [plain($text)],
        );
    }

    # Tables.
    if $first.starts-with('|') {
        my @rows;
        my @plain;
        my $i = 0;
        for @lines -> $line {
            next if $line ~~ / ^ '|' <[\-\|: ]>+ $ /;      # the separator row
            my @cells = $line.split('|');
            @cells.shift if @cells && @cells[0].trim eq '';
            @cells.pop   if @cells && @cells[*-1].trim eq '';
            my $cells = @cells.map({ '<td>' ~ inline(.trim) ~ '</td>' }).join;
            @rows.push('<tr>' ~ seg($i, $cells) ~ '</tr>');
            @plain.push(plain(@cells.join(', ')));
            $i++;
        }
        return Block.new(
            kind => 'table',
            html => '<table>' ~ @rows.join ~ '</table>',
            segs => $i,
            text => @plain,
        );
    }

    # Lists. One item is one alignable unit — the natural granularity, and one
    # translations preserve as reliably as paragraphs do.
    if $first ~~ / ^ (<[*+\-]> ' ' | \d+ '.' ' ') / {
        my $ordered = $first ~~ / ^ \d /;
        my @items;
        my @plain;
        my $i = -1;
        for @lines -> $line {
            if $line ~~ / ^ (<[*+\-]> ' ' | \d+ '.' ' ') / {
                my $text = $line.subst(/ ^ (<[*+\-]> ' ' | \d+ '.' ' ') /, '');
                $i++;
                @items.push($text);
                @plain.push($text);
            }
            elsif @items {
                @items[*-1] ~= ' ' ~ $line.trim;       # a wrapped continuation
                @plain[*-1] ~= ' ' ~ $line.trim;
            }
        }
        my $tag = $ordered ?? 'ol' !! 'ul';
        my $html = "<$tag>" ~ @items.kv.map(-> $k, $v {
            '<li>' ~ seg($k, inline($v)) ~ '</li>'
        }).join ~ "</$tag>";
        return Block.new(
            kind => 'list',
            html => $html,
            segs => @items.elems,
            text => @plain.map({ plain($_) }).Array,
        );
    }

    # Block quotes.
    if $first.starts-with('>') {
        my $text = @lines.map({ .subst(/ ^ '>' ' '? /, '') }).join(' ');
        return Block.new(
            kind => 'quote',
            html => '<blockquote>' ~ seg(0, inline($text)) ~ '</blockquote>',
            segs => 1,
            text => [plain($text)],
        );
    }

    # A paragraph: the case that matters, split into sentences.
    my $text = @lines.join(' ');
    my @sent = split-sentences($text);
    my $html = '<p>' ~ @sent.kv.map(-> $k, $v { seg($k, inline($v.trim)) }).join(' ') ~ '</p>';
    Block.new(
        kind => 'p',
        html => $html,
        segs => @sent.elems,
        text => @sent.map({ plain($_) }).Array,
    )
}

sub parse-frontmatter(Str $text) {
    return ('', $text) unless $text.starts-with('---');
    my $end = $text.index("\n---", 3);
    return ('', $text) unless $end.defined;
    my $head = $text.substr(3, $end - 3);
    my $body = $text.substr($end + 4).subst(/ ^ \n+ /, '');
    my $title = '';
    for $head.lines -> $line {
        next unless $line.trim.starts-with('title:');
        $title = yaml-unquote($line.trim.substr(6).trim);
        last;
    }
    ($title, $body)
}

# A page in one language: its title and its blocks, or Nil if untranslated.
sub load-page(Str $url, Str $dir) {
    my $path = $dir ?? "$COURSE/$dir" !! $COURSE;
    $path ~= "/$url" if $url;
    $path ~= '/index.md';
    return Nil unless $path.IO.e;

    my ($title, $body) = parse-frontmatter(slurp($path));
    $LINK-PAGE = $url;
    my @blocks = split-chunks($body).map({ render-chunk($_) }).grep({ .kind ne 'skip' });
    { title => $title, blocks => @blocks }
}

if %ARGS<page>:exists {
    my $u = %ARGS<page>.Str;
    for @LANGS.head(2) -> %l {
        my $p = load-page($u, %l<dir>.Str);
        unless $p { say "[{%l<id>}] untranslated"; next }
        say "===== {%l<id>}: {$p<title>}";
        for @($p<blocks>).kv -> $i, $b {
            say "  [$i] {$b.kind} segs={$b.segs}";
            say "      ", $b.html.substr(0, 220);
        }
    }
    exit 0;
}

# ---------------------------------------------------------------------------
# Words
#
# Every language the course is translated into gets its own index: how often a
# word occurs, and which pages to look at to see it used. That is what turns a
# translated textbook into something you can study a language from — click a
# word and the course itself supplies the example sentences, already translated.
# ---------------------------------------------------------------------------

sub tokenize(Str $text --> List) {
    my @w;
    for ($text.lc ~~ m:g/ <[\w]>+ [ <['’\-]> <[\w]>+ ]* /) -> $m {
        my $t = ~$m;
        next if $t.chars < LEX-MIN-LENGTH;
        next if $t ~~ /\d/;
        @w.push($t);
    }
    @w.list
}

my %COUNT;      # lang -> word -> occurrences
my %REFS;       # lang -> word -> [page indices]

sub note-words(Str $lang, @blocks, Int $page-n) {
    my %seen;
    for @blocks -> $b {
        next if $b.kind eq 'code' | 'raw';
        for @($b.text) -> $t {
            for tokenize($t) -> $w {
                %COUNT{$lang}{$w} = (%COUNT{$lang}{$w} // 0) + 1;
                next if %seen{$w};
                %seen{$w} = True;
                %REFS{$lang}{$w} //= [];
                %REFS{$lang}{$w}.push($page-n) if %REFS{$lang}{$w}.elems < TARGET-EXAMPLES;
            }
        }
    }
}

# ---------------------------------------------------------------------------
# Emission
# ---------------------------------------------------------------------------

sub mkdirs(Str $path) {
    my @parts = $path.split('/').grep({ $_ ne '' });
    my $acc = $path.starts-with('/') ?? '/' !! '';
    for @parts -> $p {
        $acc = $acc ?? ($acc.ends-with('/') ?? $acc ~ $p !! $acc ~ '/' ~ $p) !! $p;
        mkdir($acc) unless $acc.IO.d;
    }
}

sub write-file(Str $path, Str $content) {
    my $dir = $path.subst(/ '/' <-[/]>+ $ /, '');
    mkdirs($dir) if $dir ne $path;
    spurt($path, $content);
}

if %ARGS<clean> && $OUT.IO.d {
    run('rm', '-rf', $OUT);
}

# The cache tag: one hash over the theme, so a changed stylesheet reaches a
# returning reader instead of waiting out their cache.
my $VERSION = do {
    my @f = dir(%SITE<theme-dir>.Str).grep({ .IO.f }).map(*.Str).sort;
    my $blob = @f.map({ slurp($_) }).join ~ slurp('src/site.raku');
    my $p = run('md5', '-q', :in, :out);
    $p.in.print($blob);
    $p.in.close;
    $p.out.slurp(:close).trim.substr(0, 8);
};

sub page-shell(Str $kind, Str $title, Str $data, Str $body --> Str) {
    qq:to/HTML/;
    <!doctype html>
    <html lang="en">
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{esc($title)}</title>
    <meta name="robots" content="noindex">
    <link rel="stylesheet" href="/theme/app.css?v=$VERSION">
    <script src="/theme/langs.js?v=$VERSION"></script>
    <script src="/theme/boot.js?v=$VERSION"></script>
    </head>
    <body data-page="$kind">
    $body
    <script type="application/json" id="page-data">{$data}</script>
    <script src="/theme/reader.js?v=$VERSION"></script>
    </body>
    </html>
    HTML
}

# The frame every reading page is poured into. The panes are built by the
# client from the inlined data, because which two of the eleven languages you
# want is a decision only the reader can make.
constant READER-BODY = q:to/BODY/;
<header class="bar">
  <a class="bar-home" href="/" title="Contents">◧</a>
  <nav class="crumbs" id="crumbs"></nav>
  <div class="bar-tools">
    <div class="pair" id="pair"></div>
    <button class="tool" id="mode-btn" title="Reading mode (m)">◐</button>
    <button class="tool" id="speak-btn" title="Read the page aloud (s)">▶</button>
    <button class="tool" id="notes-btn" title="Words to notice on this page (n)">✦</button>
    <a class="tool" href="/words/" title="Your saved words (v)">★</a>
    <button class="tool" id="toc-btn" title="Contents (c)">☰</button>
    <button class="tool" id="theme-btn" title="Theme">◑</button>
  </div>
</header>
<main id="reader" class="reader"></main>
<nav class="pager" id="pager"></nav>
<aside class="drawer" id="drawer" hidden></aside>
<aside class="panel" id="panel" hidden></aside>
<div class="toasts" id="toasts"></div>
BODY

my @LANG-IDS = @LANGS.map({ .<id>.Str });

# --- pass over every page -------------------------------------------------

my %TITLES;                  # lang -> url -> title
my $pages-written = 0;
my $blocks-total  = 0;
my $mismatched    = 0;
my @mismatches;

sub blocks-json(@blocks --> Str) {
    '[' ~ @blocks.map({
        '[' ~ json-str(.kind) ~ ',' ~ .segs ~ ',' ~ json-str(.html) ~ ']'
    }).join(',') ~ ']'
}

say "reading {@SEQ.elems} pages × {@LANGS.elems} languages";

for @SEQ -> $page {
    my %doc;                 # lang id -> loaded page
    for @LANGS -> %l {
        my $d = load-page($page.url, %l<dir>.Str);
        next unless $d;
        %doc{%l<id>.Str} = $d;
        # Titles carry inline Markdown — `while`, *emphasis* — so they travel as
        # HTML, and the client writes them with innerHTML.
        %TITLES{%l<id>.Str}{$page.url} = fmt-basic($d<title>);
        note-words(%l<id>.Str, @($d<blocks>), $page.n);
    }
    next unless %doc<en>;

    my $ref = @(%doc<en><blocks>).elems;
    $blocks-total += $ref;

    my @langs-json;
    for @LANG-IDS -> $id {
        my $d = %doc{$id};
        next unless $d;
        my @b = @($d<blocks>);
        if @b.elems != $ref {
            $mismatched++;
            @mismatches.push("{$page.url} [$id]: {@b.elems} blocks vs en's $ref");
        }
        @langs-json.push: json-str($id) ~ ':{'
            ~ '"t":' ~ json-str(fmt-basic($d<title>))
            ~ ',"b":' ~ blocks-json(@b)
            ~ '}';
    }

    my $data = '{'
        ~ '"u":'  ~ json-str($page.url)
        ~ ',"n":' ~ $page.n
        ~ ',"k":' ~ json-str($page.kind)
        ~ ',"pv":' ~ json-str($page.prev)
        ~ ',"nx":' ~ json-str($page.next)
        ~ ',"tr":[' ~ $page.trail.grep({ !%DROPPED{$_} }).map({ json-str($_) }).join(',') ~ ']'
        ~ ',"L":{' ~ @langs-json.join(',') ~ '}'
        ~ '}';

    next if %ARGS<check>;        # --check reports on alignment; it publishes nothing

    write-file("$OUT/{$page.url}/index.html",
               page-shell('reader', plain(%doc<en><title>) || %SITE<title>.Str, $data, READER-BODY));
    $pages-written++;
    say "  {$pages-written} / {@SEQ.elems}" if $pages-written %% 250;
}

say "pages written: $pages-written, blocks: $blocks-total";
if $mismatched {
    # A mismatch means the English page was edited after it was translated, so
    # the two no longer line up paragraph for paragraph. The reader copes —
    # it pairs what it can — but this is the list worth handing back to the
    # course, and the number worth watching.
    my %pages = @mismatches.map({ .split(' ')[0] => True }).Hash;
    my $pairs = @SEQ.elems * @LANGS.elems;
    say "block-count mismatches: $mismatched of $pairs page/language pairs "
        ~ "({(100 * $mismatched / $pairs).round(0.01)}%), over {%pages.elems} pages";
    say "  $_" for @mismatches.head(15);
    say "  … and {$mismatched - 15} more" if $mismatched > 15;
}

if %ARGS<check> {
    exit $mismatched ?? 1 !! 0;
}

# --- the shared data files -------------------------------------------------

mkdirs("$OUT/data");

# The contents tree, as the drawer draws it: parts, the subparts that group
# their sections, and everything under those.
sub tree-json(--> Str) {
    my $y = yaml-load(slurp("$COURSE/_data/toc/en.yaml"));

    sub node(Str $url, @kids --> Str) {
        '{"u":' ~ json-str($url) ~ (@kids ?? ',"c":[' ~ @kids.join(',') ~ ']' !! '') ~ '}'
    }
    sub live(Str $url --> Bool) { (%PAGE{$url}:exists) && !%DROPPED{$url} }

    sub levels(@items, Str $parent, Str $kind --> List) {
        my @out;
        for @items -> %it {
            my $slug = %it<url> // '';
            next unless $slug;
            my $url = $kind eq 'exercise' ?? "$parent/exercises/$slug" !! "$parent/$slug";
            my @kids;
            @kids.append: levels(@(%it<items>),     $url, 'topic')    if %it<items>;
            @kids.append: levels(@(%it<exercises>), $url, 'exercise') if %it<exercises>;
            @kids.append: levels(@(%it<quizzes>),   $url, 'quiz')     if %it<quizzes>;
            @out.push: node($url, @kids) if live($url) || @kids;
        }
        @out.list
    }

    my @parts;
    for @($y<toc>) -> %part {
        my $part-url = %part<url> // '';
        next unless $part-url;
        my @groups;
        for @(%part<items> // []) -> %sub {
            my @kids;
            @kids.append: levels(@(%sub<items>),     $part-url, 'section')  if %sub<items>;
            @kids.append: levels(@(%sub<exercises>), $part-url, 'exercise') if %sub<exercises>;
            @kids.append: levels(@(%sub<quizzes>),   $part-url, 'quiz')     if %sub<quizzes>;
            next unless @kids;
            my $label = %sub<title> // '';
            @groups.push: '{"g":' ~ json-str($label) ~ ',"c":[' ~ @kids.join(',') ~ ']}';
        }
        @parts.push: node($part-url, @groups);
    }
    '{"seq":[' ~ @SEQ.map({ json-str(.url) }).join(',') ~ '],"tree":[' ~ @parts.join(',') ~ ']}'
}

write-file("$OUT/data/tree.json", tree-json());

for @LANGS -> %l {
    my $id = %l<id>.Str;
    my %t = %TITLES{$id} // {};
    write-file("$OUT/data/titles/$id.json",
        '{' ~ %t.keys.sort.map({ json-str($_) ~ ':' ~ json-str(%t{$_}) }).join(',') ~ '}');
}

# Frequency: the common core of each language, so the reader can tell at a
# glance which words on a page are worth stopping at.
for @LANGS -> %l {
    my $id = %l<id>.Str;
    my %c = %COUNT{$id} // {};
    next unless %c;
    my @ranked = %c.keys.sort({ %c{$^b} <=> %c{$^a} || $^a leg $^b });
    my @top = @ranked.head(3000);
    write-file("$OUT/data/freq/$id.json",
        '{' ~ @top.kv.map(-> $i, $w { json-str($w) ~ ':' ~ ($i + 1) }).join(',') ~ '}');

    # The full concordance, sharded by first letter so a lookup fetches a slice
    # rather than the whole language.
    my %rank;
    for @ranked.kv -> $i, $w { %rank{$w} = $i + 1 }
    my %shard;
    for %c.keys -> $w {
        my $key = $w.substr(0, 1);
        $key = '_' unless $key ~~ /<[\w]>/;
        %shard{$key} //= [];
        %shard{$key}.push($w);
    }
    for %shard.keys -> $key {
        my @entries = %shard{$key}.sort.map(-> $w {
            json-str($w) ~ ':[' ~ %c{$w} ~ ',' ~ %rank{$w} ~ ',['
                ~ (%REFS{$id}{$w} // []).join(',') ~ ']]'
        });
        # A slash or a dot in a filename is not a filename; hex-escape anything
        # that is not a plain letter.
        my $safe = $key ~~ /^ <[a..z0..9]> $/ ?? $key !! 'u' ~ $key.ord;
        write-file("$OUT/data/lex/$id/$safe.json", '{' ~ @entries.join(',') ~ '}');
    }
    say "  lexicon $id: {%c.elems} words in {%shard.elems} shards";
}

# --- the two pages that are not course pages -------------------------------

constant HOME-BODY = q:to/BODY/;
<header class="bar">
  <span class="bar-home is-here">◧</span>
  <nav class="crumbs"><strong>Raku Course Duo</strong></nav>
  <div class="bar-tools">
    <a class="tool" href="/words/" title="Your words">★</a>
    <button class="tool" id="theme-btn" title="Theme">◑</button>
  </div>
</header>
<main class="home">
  <section class="hero">
    <h1>Read the course in two languages at once</h1>
    <p class="lede">Fifteen hundred pages of <a href="https://course.raku.org">The Complete Course of the Raku
       Programming Language</a>, translated paragraph for paragraph into ten
       languages. Put two of them side by side and the course stops being only
       about Raku.</p>
    <div class="pair pair-big" id="pair"></div>
    <p class="resume" id="resume" hidden></p>
  </section>
  <section class="how" id="how"></section>
  <section class="contents">
    <h2>The course</h2>
    <div id="home-toc" class="home-toc">Loading…</div>
  </section>
</main>
<div class="toasts" id="toasts"></div>
BODY

constant WORDS-BODY = q:to/BODY/;
<header class="bar">
  <a class="bar-home" href="/" title="Contents">◧</a>
  <nav class="crumbs"><strong>Your words</strong></nav>
  <div class="bar-tools">
    <div class="pair" id="pair"></div>
    <button class="tool" id="theme-btn" title="Theme">◑</button>
  </div>
</header>
<main class="words">
  <div class="words-head">
    <div class="words-count" id="words-count"></div>
    <div class="words-acts">
      <button class="btn" id="drill-btn">Practise</button>
      <button class="btn" id="export-btn">Export for Anki</button>
      <button class="btn btn-quiet" id="clear-btn">Clear…</button>
    </div>
  </div>
  <div id="word-list" class="word-list"></div>
  <div class="drill" id="drill" hidden></div>
</main>
<aside class="panel" id="panel" hidden></aside>
<div class="toasts" id="toasts"></div>
BODY

constant LOST-BODY = q:to/BODY/;
<header class="bar">
  <a class="bar-home" href="/" title="Contents">◧</a>
  <nav class="crumbs"><strong>Nothing here</strong></nav>
  <div class="bar-tools">
    <button class="tool" id="theme-btn" title="Theme">◑</button>
  </div>
</header>
<main class="home">
  <section class="hero">
    <h1>No such page</h1>
    <p class="lede">The course has fifteen hundred pages and this is not one of
      them. Try the <a href="/">contents</a>, or the same address on
      <a href="https://course.raku.org">course.raku.org</a>.</p>
  </section>
</main>
BODY

write-file("$OUT/index.html",       page-shell('home',  %SITE<title>.Str, '{}', HOME-BODY));
write-file("$OUT/words/index.html", page-shell('words', 'Your words · ' ~ %SITE<title>.Str, '{}', WORDS-BODY));
write-file("$OUT/404.html",         page-shell('lost',  'No such page · ' ~ %SITE<title>.Str, '{}', LOST-BODY));

# --- the theme -------------------------------------------------------------

mkdirs("$OUT/theme");
for dir(%SITE<theme-dir>.Str).grep({ .IO.f }) -> $f {
    spurt("$OUT/theme/{$f.IO.basename}", slurp($f.Str));
}

# What the client needs to know about the corpus, loaded before the reader so
# there is no flash of the wrong language.
my $langs-js = 'window.DUO = {' ~ "\n"
    ~ '  langs: [' ~ "\n"
    ~ @LANGS.map({
        '    { id: '   ~ json-str(.<id>.Str)
        ~ ', name: '   ~ json-str(.<name>.Str)
        ~ ', en: '     ~ json-str(.<en-name>.Str)
        ~ ', speech: ' ~ json-str(.<speech>.Str)
        ~ ', dir: '    ~ json-str(.<dir>.Str)
        ~ ', pages: '  ~ (%TITLES{.<id>.Str} // {}).elems
        ~ ', words: '  ~ (%COUNT{.<id>.Str} // {}).elems
        ~ ' }'
      }).join(",\n")
    ~ "\n" ~ '  ],' ~ "\n"
    ~ '  defaultPair: { base: ' ~ json-str(%SITE<default-pair><base>.Str)
    ~ ', target: ' ~ json-str(%SITE<default-pair><target>.Str) ~ ' },' ~ "\n"
    ~ '  version: ' ~ json-str($VERSION) ~ ',' ~ "\n"
    ~ '  pages: ' ~ @SEQ.elems ~ ',' ~ "\n"
    ~ '  courseBase: ' ~ json-str('https://course.raku.org') ~ "\n"
    ~ '};' ~ "\n";
write-file("$OUT/theme/langs.js", $langs-js);

spurt("$OUT/CNAME", "duo.raku.online\n");
spurt("$OUT/.nojekyll", '');

say "done: $OUT (theme tag $VERSION)";
