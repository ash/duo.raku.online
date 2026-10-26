---
title: Тест — Перечисления
translations_gpt: true
---

{% include menu.html %}

Что напечатает эта программа?

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

У каждой константы есть число. Числа начинаются с нуля и идут по порядку списка. Поэтому `red` — это `0`, `green` — `1`, а `blue` — `2`. В арифметике константы работают как эти числа. Поэтому `green + blue` — это `1 + 2`. Это равно `3`.

</div>

{% include nav.html %}
