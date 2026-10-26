---
title: Тест — Изброявания
---

{% include menu.html %}

Какво отпечатва тази програма?

```raku
enum Colour <red green blue>;
say green + blue;
```

{:.quiz}
1 | 3
0 | greenblue
0 | (green blue)
0 | an error

{% include quiz.html %}

<div class="extended-explanation">

Всяка константа има число. Числата започват от нула и следват реда на списъка. Така `red` е `0`, `green` е `1`, а `blue` е `2`. В аритметиката константите работят като тези числа. Затова `green + blue` е `1 + 2`. Това е `3`.

</div>

{% include nav.html %}
