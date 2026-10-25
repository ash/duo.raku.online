---
title: 'Решение: Число в своих границах'
---

{% include menu.html %}

Программа создаёт интервал из чисел, которые вводит пользователь. Затем проверка с умным сопоставлением выясняет, находится ли третье число в границах интервала. Эта проверка даёт булево значение, поэтому мы можем сразу его вывести.

## Код

Вот решение:

```raku
my $begin = prompt 'From (including): ';
my $end = prompt 'To (excluding): ';

my $n = prompt 'What is the number? ';

say $n ~~ $begin ..^ $end;
```

🦋 Вы можете найти исходный код в файле [number-in-limits.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/ranges/number-in-limits.raku).

## Вывод

Попробуйте разные случаи, в том числе такой, когда число равно концу интервала.

```console
$ raku exercises/ranges/number-in-limits.raku
From (including): 1
To (excluding): 2
What is the number? 1.5
True

$ raku exercises/ranges/number-in-limits.raku
From (including): 100
To (excluding): 200
What is the number? 100
True

$ raku exercises/ranges/number-in-limits.raku
From (including): -5
To (excluding): -2
What is the number? -2
False
```

## Комментарий

Заметьте, как интервал исключает свой правый конец: `$begin ..^ $end`.

{% assign human=1 %}
{% include nav.html %}
