---
title: 'Решение: Високосный год'
---

{% include menu.html %}

## Предупреждение

Решение ниже нужно для практики с проверками условий. Для реальных задач можно изучить методы встроенного класса `Date`. Этот класс будет во второй части курса.

## Решение

Этот алгоритм определяет, високосный ли год:

1. Если год не делится на 4 => обычный год;
2. Если год не делится на 100 => високосный год;
3. Если год не делится на 400 => обычный год;
4. Иначе => високосный год.

Обратите внимание, что в Raku есть встроенные типы для работы с датами и временем. Поэтому мы вернёмся к этой задаче во второй части курса.

## Код 1

Первое решение делает в точности то, что говорят шаги выше:

```raku
my $year = prompt 'Year: ';

if $year % 4 {
    say 'Common year';
}
elsif $year % 100 {
    say 'Leap year';
}
elsif $year % 400 {
    say 'Common year';
}
else {
    say 'Leap year';
}
```

🦋 Вы можете найти исходный код в файле [leap-year.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year.raku).

## Код 2

Во втором решении вся логика находится в одном выражении. Скобки нужны не всегда, но здесь они делают код понятнее.

```raku
my $year = prompt 'Year: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Leap year' !! 'Common year';
```

🦋 Вы можете найти исходный код в файле [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Вывод

Проверьте обе программы на самых важных случаях, например: 1900, 2000, 2020 и 2021.

```console
$ raku exercises/conditional-checks/leap-year.raku
Year: 1900
Common year

$ raku exercises/conditional-checks/leap-year.raku
Year: 2000
Leap year
```

```console
$ raku exercises/conditional-checks/leap-year-formula.raku
Year: 2020
Leap year

$ raku exercises/conditional-checks/leap-year-formula.raku
Year: 2021
Common year
```

%%tipblock
## `%%` и `%`

Обратите внимание, что в булевом контексте операторы `%%` и `%` дают противоположные результаты. Это можно использовать, чтобы выбрать подходящий оператор. Тогда не придётся писать сравнение с нулём.

```raku
say ?(100 % 3);    # True
say 100 % 3 != 0;  # True

say ?(100 %% 3);   # False
say 100 %% 3 != 0; # Flase
```
%%/tipblock

{% assign human=1 %}
{% include nav.html %}
