---
title: Тест — gist та Str
---

{% include menu.html %}

Що виведе наступна програма?

```raku
my @a = 1, 2, 3;
say @a.Str;
```

{:.quiz}
0 | [1 2 3]
1 | 1 2 3
0 | (1 2 3)
0 | 1, 2, 3

{% include quiz.html %}

<div class="extended-explanation">

`.Str` дає просту рядкову форму. Тут елементи просто з'єднані пробілами, без дужок: `1 2 3`. Форму з дужками, `[1 2 3]`, ви отримуєте від `.gist`, а отже, і від `say @a`.

</div>

{% include nav.html %}
