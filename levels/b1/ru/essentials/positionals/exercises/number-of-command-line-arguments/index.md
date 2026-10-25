---
title: Количество аргументов командной строки
---

{% include menu.html %}

## Задача

Напишите программу, которая считает аргументы, полученные из командной строки. Она должна сообщить их количество полным предложением. Грамматика должна быть правильной. Используйте слово `argument`, когда аргумент ровно один, и `arguments` во всех остальных случаях.

## Пример

Вот как программа должна отвечать:

```console
$ raku number-of-command-line-arguments.raku make them count us now
You passed 5 arguments.

$ raku number-of-command-line-arguments.raku solo
You passed 1 argument.
```

## Решение

✅ [Посмотреть решение](solution)

{% include nav.html %}
