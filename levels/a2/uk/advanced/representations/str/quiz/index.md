---
title: Тест — gist та Str
---

{% include menu.html %}

Що виведе ця програма?

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

`.Str` дає просту рядкову форму. Елементи просто з'єднані пробілами. Дужок немає: `1 2 3`. Форма з дужками, `[1 2 3]`, походить від `.gist`. Тому `say @a` теж її друкує.

</div>

{% include nav.html %}
