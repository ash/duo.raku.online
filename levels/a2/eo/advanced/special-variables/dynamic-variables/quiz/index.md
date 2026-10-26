---
title: Kvizo — Dinamikaj variabloj
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

```raku
my $*n = 1;
sub show { say $*n }

sub run {
    my $*n = 2;
    show();
}

run();
```

{:.quiz}
0 | 1
1 | 2
0 | Nothing
0 | An error

{% include quiz.html %}

<div class="extended-explanation">

`show` estas ĉe la supra nivelo. Ĝi estas tuj apud `my $*n = 1`. Sed ĉi tiu loko ne gravas. Raku serĉas dinamikan variablon tra la *voka stako*. Ĝi ne rigardas, kie la kodo estas. Ĉi tie, `run` vokas `show`. Kaj `run` denove deklaras `$*n` kiel `2`. Do ĉi tiu valoro estas en uzo, kaj la programo presas `2`.

</div>

{% include nav.html %}
