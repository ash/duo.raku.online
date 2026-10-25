---
title: 'Решение: Окончание множественного числа'
---

{% include menu.html %}

Программа должна проверить, больше ли число единицы. Если да, слово должно быть во множественном числе.

## Код

```raku
my $n = prompt 'How many files to copy? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n file{$ending} copied.";
```

🦋 Вы можете найти исходный код в файле [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Вывод

Запустите программу два раза или больше. Попробуйте ввести `1`, а также какое-нибудь другое целое положительное число:

```console
$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 10
10 files copied.

$ raku exercises/conditional-checks/plural-ending.raku
How many files to copy? 1
1 file copied.
```

## Комментарии

Возможно, вы часто будете по ошибке писать один `?` вместо двойного `??`. Ещё вы можете написать двоеточие `:` вместо `!!` или сделать обе ошибки.

{% assign human=1 %}
{% include nav.html %}
