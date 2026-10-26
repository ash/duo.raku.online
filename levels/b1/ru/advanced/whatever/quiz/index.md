---
title: Тест — Звёздочка Whatever
translations_gpt:
---

{% include menu.html %}

Что напечатает следующая программа?

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

В индексе `*` сама по себе обозначает количество элементов. Здесь это `5`. Поэтому `*-2` — это индекс `3`. Элемент с индексом `3`, если считать с нуля, — это `8`.

</div>

{% include nav.html %}
