---
title: 'Решение: Сумма чисел'
---

{% include menu.html %}

Вот решение.

## Код

```raku
my $a = prompt 'Enter number A: ';
my $b = prompt 'Enter number B: ';
my $c = prompt 'Enter number C: ';

my $sum = $a + $b + $c;

say "The sum of numbers is $sum.";
```

🦋 Вы можете найти исходный код в файле [sum-of-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/sum-of-numbers.raku).

## Вывод

Запустите программу несколько раз. Проверьте, что она работает с разными видами чисел.

```console
$ raku exercises/numbers/sum-of-numbers.raku
Enter number A: 1.2
Enter number B: -3.4
Enter number C: 45
The sum of the numbers is 42.8.
```

## Комментарии

Заметьте, что мы напрямую используем значение из подпрограммы `prompt`. Но пользователь может ввести строку, а не число. Тогда в программе могут быть проблемы. Позже мы узнаем об исключениях. После этого мы сможем сделать программу лучше.

{% assign human=1 %}
{% include nav.html %}
