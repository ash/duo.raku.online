---
title: 'Тест — Перелічення'
translations_gpt:
---

{% include menu.html %}

Що виведе наведена програма?

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

Кожна константа позначає число. Числа починаються з нуля, у порядку списку: `red` — це `0`, `green` — `1`, `blue` — `2`. Коли ви робите з ними арифметичні дії, константи поводяться як ці числа. Тож `green + blue` — це `1 + 2`, тобто `3`.

</div>

{% include nav.html %}
