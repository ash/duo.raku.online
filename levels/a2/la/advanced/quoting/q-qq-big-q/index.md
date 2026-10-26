---
title: q, qq, et Q
---

{% include menu.html %}

Tres operatores citandi fundamentales sunt. Textum intra se plus vel minus mutant:

* `q` — sicut apostrophi simplices: fere totus textus ut est manet
* `qq` — sicut apostrophi duplices: Raku variabiles et effugia interpolat
* `Q` — maxime ad litteram: Raku **nihil** mutat

Quisque eorum textum inter duos delimitatores accipit. Delimitatores sunt characteres circa textum. Iam `'…'` nosti. Est forma brevis pro `q`. Et `"…"` est forma brevis pro `qq`:

```raku
my $name = 'Anna';

say q{Hello $name};  # Hello $name
say qq{Hello $name}; # Hello Anna
```

`q` non mutat `$name`. `qq` eam interpolat. Effugia per obliquum reversum ut `\n` eodem modo operantur. Solum `qq` et `"…"` convertunt `\n` in verum finem lineae. Et `q` et `Q` id ut duos characteres servant: `\` et `n`:

```raku
say qq{line\nbreak}; # line<newline>break
say q{line\nbreak};  # line\nbreak
say Q{line\nbreak};  # line\nbreak
```

Quae ergo est differentia inter `q` et `Q`? `q` est sicut apostrophi simplices. Adhuc *parvum* numerum effugiorum tractat. Obliquus reversus duplex `\\` fit unus obliquus reversus. Etiam delimitatorem claudentem cum obliquo reverso effugere potes. Sed forma simplex `Q` **nihil** omnino mutat:

```raku
say q{a\\b}; # a\b   — q collapses the escaped backslash
say Q{a\\b}; # a\\b  — Q keeps both characters
```

Quoslibet delimitatores adhibere potes: `q{…}`, `q[…]`, `q/…/`, `q!…!`. Hoc adiuvat cum textus ipse apostrophos habet. Hi tres operatores fundamentum sunt. Proximum thema [_adverbia_](/la/advanced/quoting/adverbs) ostendit. Cum eis exacte proprietates accensas eligis.

{% include nav.html %}
