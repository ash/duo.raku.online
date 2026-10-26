---
title: Kvizo — Dinamikaj variabloj
translations_gpt:
---

{% include menu.html %}

Kion presas la sekva programo?

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

`show` estas skribita ĉe la supra nivelo, tuj apud `my $*n = 1`. Sed ĉi tiu loko ne gravas. Raku serĉas dinamikan variablon tra la *voka stako*. Kie la kodo troviĝas, ne gravas. Ĉi tie, `show` estas vokita el `run`, kiu denove deklaris `$*n` kiel `2`. Do tio estas la valoro en uzo, kaj la programo presas `2`.

</div>

{% include nav.html %}
