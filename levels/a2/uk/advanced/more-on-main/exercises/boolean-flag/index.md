---
title: Вправа «Прапорець командного рядка»
translations_gpt:
---

{% include menu.html %}

## Завдання

Іменований параметр `MAIN` може мати тип `Bool`. Тоді він стає **прапорцем**. Прапорець увімкнений або вимкнений. Якщо ви пишете `--flag`, він дорівнює `True`. Якщо ви його не пишете, він зберігає типове значення. Напишіть програму з `MAIN`. `MAIN` приймає `Bool :$shout = False`. З прапорцем програма виводить `HELLO`. Без прапорця вона виводить `hello`.

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
