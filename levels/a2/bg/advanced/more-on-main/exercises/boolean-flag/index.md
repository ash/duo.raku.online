---
title: Флаг от командния ред
translations_gpt:
---

{% include menu.html %}

## Задача

Именуван параметър на `MAIN` може да има типа `Bool`. Тогава той става **флаг**. Флагът е включен или изключен. Ако напишете `--flag`, той е `True`. Ако го пропуснете, той запазва стойността си по подразбиране. Напишете програма с `MAIN`. `MAIN` приема `Bool :$shout = False`. С флага програмата отпечатва `HELLO`. Без флага тя отпечатва `hello`.

## Пример

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Решение

✅ [Вижте решението](solution)

{% include nav.html %}
