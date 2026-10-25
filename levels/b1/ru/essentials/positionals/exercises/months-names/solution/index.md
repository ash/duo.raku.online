---
title: 'Решение: Названия месяцев'
---

{% include menu.html %}

Названия месяцев берутся из массива `@months`, в котором двенадцать строк. Индексы массива начинаются с 0. Поэтому, прежде чем индексировать массив, мы вычитаем 1 из введённого числа.

## Код

Вот решение:

```raku
my @months = <
    January February March April
    May June July August
    September October November December
>;

say @months[@*ARGS[0] - 1];
```

🦋 Найдите программу в файле [months-names.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/months-names.raku).

## Вывод

Запустите программу несколько раз, чтобы увидеть разные названия месяцев.

```console
$ raku exercises/positionals/months-names.raku 5
May

$ raku exercises/positionals/months-names.raku 1
January

$ raku exercises/positionals/months-names.raku 12
December
```

## Стиль

Вы можете сами выбрать, как оформлять списки вроде того, что в этой программе. Вот несколько вариантов для сравнения:

```raku
my @months = <
    January February March April
    May June July August
    September October November December >;
```

Или:

```raku
my @months = < January   February March    April
               May       June     July     August
               September October  November December >;
```

Вы также можете перечислить все месяцы в одной строке.

```raku
my @months = < January February March April May June July August September October November December >;
```

{% include nav.html %}
