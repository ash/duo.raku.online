---
title: Тест — Перечисления
translations_gpt: true
---

{% include menu.html %}

Что напечатает следующая программа?

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

Каждая константа означает число. Числа начинаются с нуля, в порядке списка: `red` равно `0`, `green` равно `1`, `blue` равно `2`. Когда вы делаете с ними вычисления, константы ведут себя как эти числа. Поэтому `green + blue` равно `1 + 2`, то есть `3`.

</div>

{% include nav.html %}
