---
title: 'Solution: Сума на числа от 1 до 100'
---

{% include menu.html %}

Как можете да намерите сумата на целите числа от 1 до 100? Разбира се, можете да съберете всички тези числа в един дълъг израз. Или можете да създадете цикъл (ще говорим за цикли в следващите секции). Но най-доброто решение е да използвате една добре позната [формула](https://en.wikipedia.org/wiki/1_%2B_2_%2B_3_%2B_4_%2B_⋯):

<div class="formula"><img src="sum.png" style="height: 3.5em; width: auto" /></div>

С тази формула решението става доста лесно.

## Код

```raku
my $N = 100;
my $sum = $N * (1 + $N) / 2;
say "Сумата на числата от 1 до $N е $sum.";
```

🦋 Можете да намерите пълния код във файла [sum1-100.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/sum1-100.raku).

## Резултат

```console
$ raku exercises/numbers/sum1-100.raku 
Сумата на числата от 1 до 100 е 5050.
```

{% include nav.html %}
