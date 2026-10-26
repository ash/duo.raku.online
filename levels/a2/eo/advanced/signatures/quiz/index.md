---
title: Kvizo — Englutaj parametroj
translations_gpt:
---

{% include menu.html %}

Kion presas ĉi tiu programo?

```raku
sub f($first, *@rest) {
    say @rest.elems;
}

f('a', 'b', 'c');
```

{:.quiz}
1 | 2
0 | 3
0 | 1
0 | 0

{% include quiz.html %}

<div class="extended-explanation">

La fiksitaj parametroj ricevas siajn valorojn antaŭ la engluta. `$first` prenas `'a'`. Nur la du aliaj argumentoj, `'b'` kaj `'c'`, iras en `@rest`. Do por ĉi tiu tabelo, `.elems` donas `2`.

</div>

{% include nav.html %}
