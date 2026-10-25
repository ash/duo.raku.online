---
title: 'Solution: Имена на месеци'
---

{% include menu.html %}

Програмата взема имената на месеците от масива `@months`. Този масив има дванадесет низа. Индексите на масива започват от 0. Затова трябва да извадим 1 от входното число. Правим това, преди да го използваме като индекс.

## Код

Ето решението:

```raku
my @months = <
    January February March April
    May June July August
    September October November December
>;

say @months[@*ARGS[0] - 1];
```

🦋 Намерете програмата във файла [months-names.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/months-names.raku).

## Изход

Стартирайте програмата няколко пъти. Ще видите различни имена на месеци.

```console
$ raku exercises/positionals/months-names.raku 5
May

$ raku exercises/positionals/months-names.raku 1
January

$ raku exercises/positionals/months-names.raku 12
December
```

## Стил

Има различни начини да форматирате такъв списък. Можете да изберете всеки от тях. Сравнете няколко варианта:

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

Можете също да напишете всички месеци на един ред.

```raku
my @months = < January February March April May June July August September October November December >;
```

{% include nav.html %}
