---
title: 'Solution: Кодове на държави'
---

{% include menu.html %}

Програмата има цикъл над масива `@codes`. За всеки код тя взема името от хеша: `%cc{$_}`.

## Код

Ето едно възможно решение. То не показва всички държави:

```raku
my %cc =
    AD => 'Андора',
    AE => 'Обединени арабски емирства',

    # . . .

    ZM => 'Замбия',
    ZW => 'Зимбабве'
;

my @codes = < FR IT DE EE LV US CN IN BR >;

say %cc{$_} for @codes;
```

🦋 Намерете програмата във файла [country-codes.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/country-codes.raku).

## Изход

За тези кодове програмата отпечатва този списък с държави:

```console
$ raku exercises/associatives/country-codes.raku
Франция
Италия
Германия
Естония
Латвия
Съединени американски щати
Китай
Индия
Бразилия
```

{% include nav.html %}
