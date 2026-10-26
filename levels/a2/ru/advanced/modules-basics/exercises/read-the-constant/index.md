---
title: Прочитайте константу
translations_gpt:
---

{% include menu.html %}

## Задача

Вот модуль в файле `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Напишите программу. Она загружает этот модуль с помощью `need`, а не `use`. Потом она печатает значение `$pi`. Помните: `need` не импортирует имена. Поэтому до переменной вы добираетесь через имя модуля.

## Пример

```console
$ raku -I. read-pi.raku
3.14
```

## Решение

✅ [Посмотреть решение](solution)

{% include nav.html %}
