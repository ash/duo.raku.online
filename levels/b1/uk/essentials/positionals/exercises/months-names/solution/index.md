---
title: 'Solution: Назви місяців'
---

{% include menu.html %}

Назви місяців беруться з масиву `@months`, у якому дванадцять рядків. Індекси масиву починаються з 0. Тому перед індексуванням масиву ми віднімаємо 1 від вхідного числа.

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

Запустіть програму кілька разів, щоб побачити різні назви місяців.

```console
$ raku exercises/positionals/months-names.raku 5
May

$ raku exercises/positionals/months-names.raku 1
January

$ raku exercises/positionals/months-names.raku 12
December
```

## Стиль

Ви можете самі вибрати, як форматувати списки на зразок того, що в цій програмі. Ось кілька варіантів для порівняння:

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

Ви також можете перерахувати всі місяці в одному рядку.

```raku
my @months = < January February March April May June July August September October November December >;
```

{% include nav.html %}
