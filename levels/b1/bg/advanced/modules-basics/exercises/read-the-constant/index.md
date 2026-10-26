---
title: Прочетете константата
translations_gpt:
---

{% include menu.html %}

## Задача

Имате модул във файл `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Напишете програма, която зарежда този модул с `need`, а не с `use`. Тя трябва да отпечата стойността на `$pi`. Помнете, че `need` не импортира имена. Затова достигате до променливата чрез името на модула.

## Пример

```console
$ raku -I. read-pi.raku
3.14
```

## Решение

✅ [Вижте решението](solution)

{% include nav.html %}
