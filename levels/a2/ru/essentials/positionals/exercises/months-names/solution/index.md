---
title: 'Решение: Названия месяцев'
---

{% include menu.html %}

Программа берёт названия месяцев из массива `@months`. В этом массиве двенадцать строк. Индексы массива начинаются с 0. Поэтому мы должны отнять 1 от введённого числа. Мы делаем это перед тем, как использовать его как индекс.

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

Запустите программу несколько раз. Вы увидите разные названия месяцев.

```console
$ raku exercises/positionals/months-names.raku 5
May

$ raku exercises/positionals/months-names.raku 1
January

$ raku exercises/positionals/months-names.raku 12
December
```

## Стиль

Есть разные способы оформить такой список. Вы можете выбрать любой из них. Сравните несколько вариантов:

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

Можно также записать все месяцы в одну строку.

```raku
my @months = < January February March April May June July August September October November December >;
```

{% include nav.html %}
