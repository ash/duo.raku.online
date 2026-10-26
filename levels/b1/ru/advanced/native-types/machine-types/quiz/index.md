---
title: Тест — Нативные типы
translations_gpt:
---

{% include menu.html %}

Что напечатает следующая программа?

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

Когда вы спрашиваете нативное значение о нём самом, Raku автоматически *упаковывает* его. Значение попадает в соответствующий полный тип. Здесь `$n` объявлена как нативный `int`. Но `.^name` всё равно сообщает, что её тип — упакованный `Int`.

</div>

{% include nav.html %}
