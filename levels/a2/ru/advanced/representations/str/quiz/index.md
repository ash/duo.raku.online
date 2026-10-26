---
title: Тест — gist и Str
---

{% include menu.html %}

Что напечатает эта программа?

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

`.Str` даёт простую строковую форму. Между элементами просто стоят пробелы. Скобок нет: `1 2 3`. Форму со скобками, `[1 2 3]`, даёт `.gist`. Поэтому `say @a` тоже печатает её.

</div>

{% include nav.html %}
