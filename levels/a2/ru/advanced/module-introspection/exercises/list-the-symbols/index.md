---
title: Список символов
translations_gpt:
---

{% include menu.html %}

## Задача

Вот модуль в файле `Circle.rakumod`. В нём две переменные `our`:

```raku
unit module Circle;

our $pi = 3.14;
our $tau = 6.28;
```

Напишите программу. Она использует модуль. Сначала она выводит количество имён в пакете модуля. Потом она выводит сами имена. Они должны идти по алфавиту.

## Пример

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Решение

✅ [Смотрите решение](solution)

{% include nav.html %}
