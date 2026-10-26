---
title: 'Тест — Зірочка Whatever'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

```raku
my @a = 5, 6, 7, 8, 9;
say @a[*-2];
```

{:.quiz}
1 | 8
0 | 7
0 | 9
0 | 3

{% include quiz.html %}

<div class="extended-explanation">

В індексі сама зірочка — це кількість елементів. Тут це `5`. Тож `*-2` — це індекс `3`. Ми рахуємо від нуля. Елемент з індексом `3` — це `8`.

</div>

{% include nav.html %}
