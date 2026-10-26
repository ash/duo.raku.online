---
title: Kvizo — Deklaraj prefiksoj
translations_gpt:
---

{% include menu.html %}

Kion presas la sekva programo?

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

Kiam vi aldonas `10` al la nedefinita `$v`, Raku traktas ĝin kiel `0` kaj donas `10`. Normale estus ankaŭ averto pri "neinicialigita valoro". Sed la prefikso `quietly` kaŝas ĝin, do nur `10` estas presata.

</div>

{% include nav.html %}
