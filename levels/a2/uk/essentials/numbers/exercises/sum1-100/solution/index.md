---
title: 'Solution: Сума чисел від 1 до 100'
---

{% include menu.html %}

Як знайти суму цілих чисел від 1 до 100? Звісно, можна скласти всі ці числа в одному довгому виразі. Або можна написати цикл. Цикли будуть пізніше в курсі. Але найкращий спосіб — це відома [формула](https://uk.wikipedia.org/wiki/1_%2B_2_%2B_3_%2B_4_%2B_⋯):

<div class="formula"><img src="sum.png" style="height: 3.5em; width: auto" /></div>

З формулою рішення дуже просте.

## Код

```raku
my $N = 100;
my $sum = $N * (1 + $N) / 2;
say "Сума чисел від 1 до $N дорівнює $sum.";
```

🦋 Ви можете знайти повний код у файлі [sum1-100.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/sum1-100.raku).

## Вивід

```console
$ raku exercises/numbers/sum1-100.raku 
Сума чисел від 1 до 100 дорівнює 5050.
```

{% include nav.html %}
