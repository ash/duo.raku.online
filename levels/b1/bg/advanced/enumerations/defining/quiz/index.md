---
title: Тест — Изброявания
---

{% include menu.html %}

Какво отпечатва следната програма?

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

Всяка константа означава число. Числата започват от нула, в реда на списъка: `red` е `0`, `green` е `1`, `blue` е `2`. Когато смятате с тях, константите действат като тези числа. Затова `green + blue` е `1 + 2`, което е `3`.

</div>

{% include nav.html %}
