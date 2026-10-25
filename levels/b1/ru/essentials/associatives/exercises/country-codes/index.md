---
title: Коды стран
---

{% include menu.html %}

## Задача

У вас есть массив со списком двухбуквенных кодов стран:

```raku
my @codes = < FR IT DE EE LV US CN IN BR >;
```

Допишите программу. Она должна выводить полные названия этих стран, по одному на строку. Используйте файл [cc.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/country-codes/cc.raku). В нём есть хэш, который даёт название страны для каждого кода.

## Пример

Вот что выводит программа. Здесь показаны только первые несколько названий:

```console
$ raku country-codes.raku
France
Italy
Germany
. . .
```

## Решение

✅ [См. решение](solution)

{% include nav.html %}
