---
title: Kapti la eligon
translations_gpt:
---

{% include menu.html %}

Foje via programo bezonas legi tion, kion ekstera programo presas, anstataŭ montri ĝin. Por tio, transdonu `:out`, kiam vi lanĉas la programon. La redonita `Proc` tiam havas tenilon `.out`, el kiu vi povas legi:

```raku
my $proc = run 'echo', 'hello', :out;
my $output = $proc.out.slurp(:close);
say $output.chomp; # hello
```

`:out` sendas la norman eligon de la programo en la `Proc`. La tenilo `.out` funkcias kiel la dosierteniloj el la antaŭa sekcio. `.slurp` legas ĉion el ĝi samtempe. La adverbo `:close` estas utila mallongigo: ĝi fermas la tenilon por vi post la legado. Vi faris la saman ordigon mem per `.close` sur dosiertenilo. Tiel nenio restas malfermita. Fine, `.chomp` forigas la linifinon, kiun `echo` aldonas ĉe la fino.

La samo funkcias kun `shell`. Tio estas utila, kiam vi volas kapti la rezulton de dukto:

```raku
my $proc = shell 'echo hello | tr a-z A-Z', :out;
say $proc.out.slurp(:close).chomp; # HELLO
```

Vi ankaŭ povas kapti la erarfluon, per `:err` kaj la responda tenilo `.err`. Se vi transdonas kaj `:out` kaj `:err`, la du fluoj restas apartaj. Ĉiu havas sian propran tenilon, do vi povas legi ilin aparte:

```raku
my $proc = run 'sh', '-c', 'echo out-line; echo err-line >&2', :out, :err;

say 'stdout: ', $proc.out.slurp(:close).chomp; # stdout: out-line
say 'stderr: ', $proc.err.slurp(:close).chomp; # stderr: err-line
```

Ĉi tie, la ŝela komando presas unu linion al norma eligo kaj unu al norma erarfluo. La parto `>&2` redirektas la duan linion tien. Ni petis ambaŭ fluojn, do `.out` kaj `.err` tenas ilin aparte. La normala eligo de la programo neniam miksiĝas kun ĝiaj erarmesaĝoj.

Kapti eligon permesas al vi uzi eksteran programon kiel konstruelementon. Vi rulas ĝin, legas ĝian rezulton kaj daŭrigas kun tiuj datumoj en via propra programo.

{% include nav.html %}
