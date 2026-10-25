---
title: Коди країн
---

{% include menu.html %}

## Завдання

У масиві є список кодів країн. Кожен код має дві літери:

```raku
my @codes = < FR IT DE EE LV US CN IN BR >;
```

Допишіть програму. Вона має вивести повні назви цих країн. Виведіть кожну назву в окремому рядку. Використайте файл [cc.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/country-codes/cc.raku). У ньому є хеш. Хеш дає назву країни для кожного коду.

## Приклад

Ось вивід програми. Він показує лише кілька перших назв:

```console
$ raku country-codes.raku
France
Italy
Germany
. . .
```

## Рішення

✅ [Дивіться рішення](solution)

{% include nav.html %}
