---
title: Тест — Звёздочка Whatever
translations_gpt:
---

{% include menu.html %}

Что напечатает эта программа?

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

В индексе одна звёздочка — это количество элементов. Здесь это `5`. Поэтому `*-2` — это индекс `3`. Мы считаем с нуля. Элемент с индексом `3` — это `8`.

</div>

{% include nav.html %}
