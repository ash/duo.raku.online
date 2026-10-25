---
title: 'Solution: Сума чисел від 1 до 100'
---

{% include menu.html %}

Як можна знайти суму цілих чисел від 1 до 100? Звісно, можна скласти всі ці числа в одному довгому виразі. Або можна створити цикл (про цикли ми поговоримо в наступних розділах). Але найкраще рішення — використати добре відому [формулу](https://uk.wikipedia.org/wiki/1_%2B_2_%2B_3_%2B_4_%2B_⋯):

<div class="formula"><img src="sum.png" style="height: 3.5em; width: auto" /></div>

З цією формулою рішення стає досить легким.

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
