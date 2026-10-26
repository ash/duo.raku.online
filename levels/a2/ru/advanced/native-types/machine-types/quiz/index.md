---
title: Тест — Нативные типы
translations_gpt:
---

{% include menu.html %}

Что напечатает эта программа?

```raku
my int $n = 42;
say $n.^name;
```

{:.quiz}
1 | Int
0 | int
0 | (Int)
0 | Num

{% include quiz.html %}

<div class="extended-explanation">

Спросите нативное значение о нём самом, и Raku автоматически *упакует* его. Он кладёт значение в соответствующий полный тип. `$n` объявлена как нативный `int`. Но `.^name` спрашивает имя её типа. Поэтому вы получаете упакованный тип, `Int`.

</div>

{% include nav.html %}
