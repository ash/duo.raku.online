---
title: 'Тест — Машинні типи'
translations_gpt:
---

{% include menu.html %}

Що виведе ця програма?

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

Запитайте щось про машинне значення, і Raku автоматично *упакує* його. Він кладе значення у відповідний повний тип. Ми оголошуємо `$n` як машинний `int`. Але `.^name` запитує назву його типу. Тож ви отримуєте упакований тип, `Int`.

</div>

{% include nav.html %}
