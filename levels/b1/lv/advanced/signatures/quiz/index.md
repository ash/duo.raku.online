---
title: Viktorīna — Slurpy parametri
translations_gpt:
---

{% include menu.html %}

Ko izvada sekojosa programma?

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

Fiksētie parametri saņem vērtības pirms uzsūcošā parametra. `$first` paņem `'a'`, un tikai divi atlikušie argumenti, `'b'` un `'c'`, nonāk `@rest`. Tāpēc tā `.elems` ir `2`.

</div>

{% include nav.html %}
