---
title: Флаг от командния ред
translations_gpt:
---

{% include menu.html %}

## Задача

Именуван параметър от тип `Bool` на `MAIN` става **флаг**, който е или включен, или изключен. Ако напишете `--flag`, той получава стойност `True`, а ако го пропуснете, запазва стойността си по подразбиране. Напишете програма, чийто `MAIN` приема `Bool :$shout = False`. Тя трябва да отпечатва `HELLO`, когато флагът е зададен, и `hello`, когато го няма.

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
