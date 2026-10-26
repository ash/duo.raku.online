---
title: 'Тест — Машинні типи'
translations_gpt:
---

{% include menu.html %}

Що виведе наведена програма?

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

Коли ви щось запитуєте про машинне значення, Raku автоматично *упаковує* його. Значення потрапляє у відповідний повний тип. Тут `$n` оголошено як машинний `int`. Але `.^name` однаково повідомляє, що його тип — упакований `Int`.

</div>

{% include nav.html %}
