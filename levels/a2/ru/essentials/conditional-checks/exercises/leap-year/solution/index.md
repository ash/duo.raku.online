---
title: 'Решение: Високосный год'
---

{% include menu.html %}

## Предупреждение

Решение ниже — для практики. Оно учит вас использовать проверки условий. В Raku есть встроенный класс `Date`. В реальной жизни можно изучить его методы. Мы изучим этот класс во второй части курса.

## Решение

Эти шаги показывают, високосный ли год:

1. Если год не делится на 4 => обычный год;
2. Если год не делится на 100 => високосный год;
3. Если год не делится на 400 => обычный год;
4. Иначе => високосный год.

В Raku есть встроенные типы для дат и времени. Их тоже можно использовать. Поэтому эта задача есть и во второй части курса.

## Код 1

Первое решение точно следует шагам выше:

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

Второе решение собирает всю логику в одно выражение. Круглые скобки нужны не всегда. Мы добавляем их здесь, чтобы код был понятнее.

```raku
my $year = prompt 'Year: ';

say (($year %% 400) || (($year %% 4) && ($year % 100))) ?? 'Leap year' !! 'Common year';
```

🦋 Вы можете найти исходный код в файле [leap-year-formula.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/leap-year-formula.raku).

## Вывод

Попробуйте обе программы на самых важных случаях. Например, возьмите 1900, 2000, 2020 и 2021.

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

Иногда Raku нужно значение `True` или `False`. Мы называем это булевым контекстом. В булевом контексте `%%` и `%` дают противоположные результаты. Если один даёт `True`, другой даёт `False`. Это можно использовать. Выберите один из двух операторов. Тогда не нужно писать сравнение с нулём.

```raku
say ?(100 % 3);    # True
say 100 % 3 != 0;  # True

say ?(100 %% 3);   # False
say 100 %% 3 != 0; # Flase
```
%%/tipblock

{% assign human=1 %}
{% include nav.html %}
