---
title: Quiz — Slurpy-parameters
translations_gpt:
---

{% include menu.html %}

Wat drukt dit programma af?

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

De vaste parameters krijgen hun waarden vóór de slurpy parameter. `$first` neemt `'a'`. Alleen de twee andere argumenten, `'b'` en `'c'`, gaan naar `@rest`. Voor deze array geeft `.elems` dus `2`.

</div>

{% include nav.html %}
