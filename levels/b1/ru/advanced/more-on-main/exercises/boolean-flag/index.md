---
title: Флаг командной строки
translations_gpt:
---

{% include menu.html %}

## Задача

Именованный параметр `MAIN` типа `Bool` становится **флагом**, который либо включён, либо выключен. Если написать `--flag`, он получает значение `True`, а если не писать, остаётся значение по умолчанию. Напишите программу, в которой `MAIN` принимает `Bool :$shout = False`. Она должна выводить `HELLO`, когда флаг задан, и `hello`, когда его нет.

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
