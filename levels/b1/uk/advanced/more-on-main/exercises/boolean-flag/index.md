---
title: Вправа «Прапорець командного рядка»
translations_gpt:
---

{% include menu.html %}

## Завдання

Іменований параметр `MAIN` типу `Bool` стає **прапорцем**, який або увімкнений, або вимкнений. Запис `--flag` встановлює його в `True`, а без нього він зберігає типове значення. Напишіть програму, `MAIN` якої приймає `Bool :$shout = False`. Вона має виводити `HELLO`, коли прапорець встановлено, і `hello`, коли його немає.

## Приклад

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Рішення

✅ [Дивіться рішення](solution)

{% include nav.html %}
