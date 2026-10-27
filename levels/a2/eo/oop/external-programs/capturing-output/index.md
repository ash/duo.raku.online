---
title: Kapti la eligon
translations_gpt:
---

{% include menu.html %}

Normale, ekstera programo presas al la ekrano. Sed eble vi volas legi ĝian eligon en via programo. Tiam aldonu `:out`, kiam vi lanĉas la programon. Vi ricevas objekton `Proc`. Ĝi havas tenilon `.out`. Vi povas legi la eligon el ĉi tiu tenilo:

```raku
my $proc = run 'echo', 'hello', :out;
my $output = $proc.out.slurp(:close);
say $output.chomp; # hello
```

`:out` sendas la norman eligon de la programo en la `Proc`. Norma eligo estas la fluo por la normala eligo de programo. La tenilo `.out` funkcias kiel la dosierteniloj el la antaŭa sekcio. `.slurp` legas la tutan tekston el ĝi samtempe. La adverbo `:close` estas utila mallongigo. Ĝi fermas la tenilon por vi post la legado. Antaŭe, vi faris tion mem per `.close` sur dosiertenilo. Do nenio restas malfermita. Fine, `.chomp` forigas la linifinon ĉe la fino. `echo` aldonas ĉi tiun linifinon.

La samo funkcias kun `shell`. Tio estas utila kun dukto. En dukto, unu komando sendas sian eligon al la sekva. Per `shell`, vi povas kapti la finan rezulton:

```raku
my $proc = shell 'echo hello | tr a-z A-Z', :out;
say $proc.out.slurp(:close).chomp; # HELLO
```

Vi ankaŭ povas kapti la erarfluon. Ĉi tiu fluo nomiĝas norma erarfluo. Programo presas siajn erarmesaĝojn tien. Por ĉi tiu fluo, uzu `:err` kaj la tenilon `.err`. Vi povas transdoni kaj `:out` kaj `:err`. Tiam la du fluoj restas apartaj. Ĉiu havas sian propran tenilon. Do vi povas legi ĉiun el ili aparte:

```raku
my $proc = run 'sh', '-c', 'echo out-line; echo err-line >&2', :out, :err;

say 'stdout: ', $proc.out.slurp(:close).chomp; # stdout: out-line
say 'stderr: ', $proc.err.slurp(:close).chomp; # stderr: err-line
```

Ĉi tie, la ŝela komando presas du liniojn. Unu linio iras al norma eligo. La alia linio iras al norma erarfluo. La parto `>&2` sendas ĝin tien. Ni petis ambaŭ fluojn. Do `.out` kaj `.err` tenas ilin aparte. La normala eligo de la programo neniam miksiĝas kun ĝiaj erarmesaĝoj.

Kapti eligon estas tre utile. Ekstera programo fariĝas unu parto de via propra programo. Vi rulas ĝin kaj legas ĝian rezulton. Poste via programo daŭras kaj uzas ĉi tiujn datumojn.

{% include nav.html %}
