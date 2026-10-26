---
title: Флаг командной строки
translations_gpt:
---

{% include menu.html %}

## Задача

Именованный параметр `MAIN` может иметь тип `Bool`. Тогда он становится **флагом**. Флаг включён или выключен. Если вы пишете `--flag`, он равен `True`. Если вы его не пишете, он сохраняет значение по умолчанию. Напишите программу с `MAIN`. `MAIN` принимает `Bool :$shout = False`. С флагом программа печатает `HELLO`. Без флага она печатает `hello`.

## Пример

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Решение

✅ [Смотреть решение](solution)

{% include nav.html %}
