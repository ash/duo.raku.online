---
title: Kvizo — Englutaj parametroj
translations_gpt:
---

{% include menu.html %}

Kion presas la jena programo?

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

Fiksitaj parametroj ricevas siajn valorojn antaŭ la engluta. `$first` prenas `'a'`, kaj nur la du restantaj argumentoj, `'b'` kaj `'c'`, iras en `@rest`. Do ĝia `.elems` estas `2`.

</div>

{% include nav.html %}
