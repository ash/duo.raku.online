---
title: 'Solution: Имена на месеци'
---

{% include menu.html %}

Имената на месеците идват от масива `@months`, който има дванадесет низа. Индексите на масива започват от 0. Затова, преди да индексираме масива, изваждаме 1 от входното число.

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

Стартирайте програмата няколко пъти, за да видите различни имена на месеци.

```console
$ raku exercises/positionals/months-names.raku 5
May

$ raku exercises/positionals/months-names.raku 1
January

$ raku exercises/positionals/months-names.raku 12
December
```

## Стил

Можете да изберете как да форматирате списъци като този в програмата. Ето няколко варианта за сравнение:

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

Можете също така да изброите всички месеци на един ред.

```raku
my @months = < January February March April May June July August September October November December >;
```

{% include nav.html %}
