---
title: 'Тест — Перелічення'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

```raku
enum Colour <red green blue>;
say green + blue;
```

{:.quiz}
1 | 3
0 | greenblue
0 | (green blue)
0 | помилку

{% include quiz.html %}

<div class="extended-explanation">

Кожна константа має число. Числа починаються з нуля й ідуть за порядком списку. Тож `red` — це `0`, `green` — `1`, а `blue` — `2`. В арифметиці константи працюють як ці числа. Тож `green + blue` — це `1 + 2`. Це дорівнює `3`.

</div>

{% include nav.html %}
