---
title: Viktorīna — Slurpy parametri
translations_gpt:
---

{% include menu.html %}

Ko izdrukā šī programma?

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

Fiksētie parametri saņem vērtības pirms uzsūcošā. `$first` paņem `'a'`. Tikai abi pārējie argumenti, `'b'` un `'c'`, nonāk `@rest`. Tāpēc šim masīvam `.elems` dod `2`.

</div>

{% include nav.html %}
