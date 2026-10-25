---
title: 'Solution: Коди країн'
---

{% include menu.html %}

У програмі є цикл по масиву `@codes`. Для кожного коду вона бере назву з хешу: `%cc{$_}`.

## Код

Ось можливе рішення. Воно показує не всі країни:

```raku
my %cc =
    AD => 'Андорра',
    AE => 'Об'єднані Арабські Емірати',

    # . . .

    ZM => 'Замбія',
    ZW => 'Зімбабве'
;

my @codes = < FR IT DE EE LV US CN IN BR >;

say %cc{$_} for @codes;
```

🦋 Знайдіть програму у файлі [country-codes.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/country-codes.raku).

## Вивід

Для цих кодів програма виводить такий список країн:

```console
$ raku exercises/associatives/country-codes.raku
Франція
Італія
Німеччина
Естонія
Латвія
Сполучені Штати Америки
Китай
Індія
Бразилія
```

{% include nav.html %}
