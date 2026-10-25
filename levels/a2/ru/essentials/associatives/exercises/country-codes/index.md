---
title: Коды стран
---

{% include menu.html %}

## Задача

В массиве есть список кодов стран. Каждый код состоит из двух букв:

```raku
my @codes = < FR IT DE EE LV US CN IN BR >;
```

Допишите программу. Она должна выводить полные названия этих стран. Выводите каждое название на отдельной строке. Используйте файл [cc.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/country-codes/cc.raku). В нём есть хэш. Хэш даёт название страны для каждого кода.

## Пример

Вот вывод программы. В нём только первые несколько названий:

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
