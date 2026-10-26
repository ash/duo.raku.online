---
title: Тест — Slurpy параметри
---

{% include menu.html %}

Какво отпечатва тази програма?

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

Фиксираните параметри получават стойностите си преди slurpy параметъра. `$first` взема `'a'`. Само другите два аргумента, `'b'` и `'c'`, отиват в `@rest`. Затова за този масив `.elems` дава `2`.

</div>

{% include nav.html %}
