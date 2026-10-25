---
title: 'Решение: Вывод аргументов командной строки'
---

{% include menu.html %}

Программа получает аргументы из командной строки. Они лежат в массиве `@*ARGS`. Поэтому нам нужен цикл по его элементам.

## Код

```raku
.say for @*ARGS;
```

🦋 Найдите программу в файле [number-of-command-line-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/print-command-line-arguments.raku).

## Вывод

Запустите программу. Проверьте, что она выводит аргументы, по одному на строке:

```console
$ raku exercises/positionals/print-command-line-arguments.raku hello command-line arguments
hello
command-line
arguments
```

{% include nav.html %}
