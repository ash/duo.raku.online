---
title: Kvizo — Pakoj
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

```raku
module M {
    my $x = 5;
}

say $M::x.defined;
```

{:.quiz}
1 | False
0 | True
0 | 5
0 | Eraron

{% include quiz.html %}

<div class="extended-explanation">

La programo kreas `$x` per `my`. Do ĝi estas leksika. Ĝi neniam eniras la nomspacon `M`. Pro tio, la vojo `$M::x` trovas nenion. Ĝi donas nedifinitan valoron. Do `.defined` estas `False`. Oni povas atingi tiel nur `our`-variablon.

</div>

{% include nav.html %}
