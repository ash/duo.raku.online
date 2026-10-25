---
title: 'Решение: Коды стран'
---

{% include menu.html %}

Чтобы превратить код в название, программа ищет его в хэше: `%cc{$_}`. Она делает это в цикле по массиву `@codes`.

## Код

Вот одно из возможных решений, без полного списка стран:

```raku
my %cc =
    AD => 'Андорра',
    AE => 'Объединенные Арабские Эмираты',

    # . . .

    ZM => 'Замбия',
    ZW => 'Зимбабве'
;

my @codes = < FR IT DE EE LV US CN IN BR >;

say %cc{$_} for @codes;
```

🦋 Найдите программу в файле [country-codes.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/country-codes.raku).

## Вывод

Для кодов из задачи программа выводит следующие страны:

```console
$ raku exercises/associatives/country-codes.raku
Франция
Италия
Германия
Эстония
Латвия
Соединенные Штаты Америки
Китай
Индия
Бразилия
```

{% include nav.html %}
