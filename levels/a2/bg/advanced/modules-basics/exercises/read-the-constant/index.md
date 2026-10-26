---
title: Прочетете константата
translations_gpt:
---

{% include menu.html %}

## Задача

Ето модул във файла `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Напишете програма. Тя зарежда този модул с `need`, а не с `use`. След това отпечатва стойността на `$pi`. Запомнете: `need` не импортира имена. Затова стигате до променливата чрез името на модула.

## Пример

```console
$ raku -I. read-pi.raku
3.14
```

## Решение

✅ [Вижте решението](solution)

{% include nav.html %}
