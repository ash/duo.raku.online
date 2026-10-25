---
title: 'Solution: Коди країн'
---

{% include menu.html %}

Щоб перетворити код на назву, програма шукає його в хеші: `%cc{$_}`. Вона робить це в циклі по масиву `@codes`.

## Код

Ось одне з можливих рішень, без повного списку країн:

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

Для кодів із завдання програма виводить такі країни:

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
