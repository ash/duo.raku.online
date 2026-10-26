---
title: Kvizo — Deklaraj prefiksoj
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

```raku
my $v;
quietly {
    say $v + 10;
}
```

{:.quiz}
0 | A warning, then 10
1 | 10
0 | Nil
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

`$v` estas nedefinita. Kiam vi aldonas `10` al ĝi, Raku uzas `0` por `$v`. Do la rezulto estas `10`. Kutime estas ankaŭ averto: "neinicialigita valoro". Sed la prefikso `quietly` kaŝas ĝin. Do la programo presas nur `10`.

</div>

{% include nav.html %}
