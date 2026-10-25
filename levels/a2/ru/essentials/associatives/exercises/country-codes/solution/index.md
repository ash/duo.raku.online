---
title: 'Решение: Коды стран'
---

{% include menu.html %}

В программе есть цикл по массиву `@codes`. Для каждого кода она берёт название из хэша: `%cc{$_}`.

## Код

Вот возможное решение. В нём есть не все страны:

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

Для этих кодов программа выводит такой список стран:

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
