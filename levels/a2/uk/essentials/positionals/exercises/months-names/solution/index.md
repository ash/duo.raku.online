---
title: 'Solution: Назви місяців'
---

{% include menu.html %}

Програма бере назви місяців з масиву `@months`. У цьому масиві дванадцять рядків. Індекси масиву починаються з 0. Тож ми повинні відняти 1 від вхідного числа. Ми робимо це перед тим, як використати його як індекс.

## Код

Ось рішення:

```raku
my @months = <
    January February March April
    May June July August
    September October November December
>;

say @months[@*ARGS[0] - 1];
```

🦋 Знайдіть програму у файлі [months-names.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/months-names.raku).

## Вивід

Запустіть програму кілька разів. Ви побачите різні назви місяців.

```console
$ raku exercises/positionals/months-names.raku 5
May

$ raku exercises/positionals/months-names.raku 1
January

$ raku exercises/positionals/months-names.raku 12
December
```

## Стиль

Є різні способи форматувати такий список. Ви можете вибрати будь-який з них. Порівняйте кілька варіантів:

```raku
my @months = <
    January February March April
    May June July August
    September October November December >;
```

Або:

```raku
my @months = < January   February March    April
               May       June     July     August
               September October  November December >;
```

Ви також можете записати всі місяці в одному рядку.

```raku
my @months = < January February March April May June July August September October November December >;
```

{% include nav.html %}
