---
title: Quiz — Slurpy-parameters
translations_gpt:
---

{% include menu.html %}

Wat drukt het volgende programma af?

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

Vaste parameters krijgen hun waarden vóór de slurpy parameter. `$first` neemt `'a'`, en alleen de twee overige argumenten, `'b'` en `'c'`, gaan naar `@rest`. Daarom is `.elems` van `@rest` gelijk aan `2`.

</div>

{% include nav.html %}
