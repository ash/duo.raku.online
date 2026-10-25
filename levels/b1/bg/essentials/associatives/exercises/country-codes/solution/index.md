---
title: 'Solution: Кодове на държави'
---

{% include menu.html %}

За да превърне код в име, програмата го търси в хеша: `%cc{$_}`. Тя прави това в цикъл над масива `@codes`.

## Код

Ето едно възможно решение, без пълния списък с държави:

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

С кодовете от задачата програмата отпечатва следните държави:

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
