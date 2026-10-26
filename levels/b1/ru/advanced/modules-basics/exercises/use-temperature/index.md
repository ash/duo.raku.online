---
title: Используйте конвертер
translations_gpt:
---

{% include menu.html %}

## Задача

У вас есть модуль в файле `Temperature.rakumod`:

```raku
unit module Temperature;

sub c-to-f($c) is export {
    $c * 9/5 + 32
}
```

Напишите отдельную программу, которая использует этот модуль. Программа получает температуру по Цельсию как аргумент командной строки. С помощью модуля она переводит её в градусы Фаренгейта и печатает результат.

## Пример

```console
$ raku -I. temperature.raku 100
212
```

## Решение

✅ [Посмотреть решение](solution)

{% include nav.html %}
