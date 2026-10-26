---
title: Вправа «Скористайтеся модулем статистики»
translations_gpt:
---

{% include menu.html %}

## Завдання

Ось модуль `Stats.rakumod`. Він експортує дві підпрограми: `total` і `mean`. Підпрограма `mean` використовує `total`:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Напишіть окрему програму. Вона використовує цей модуль. Вона бере список `10, 20, 30, 40`. Вона виводить суму і середнє значення цього списку.

## Приклад

Запустіть програму з модулем на шляху пошуку. Вона виводить:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Рішення

✅ [Дивіться рішення](solution)

{% include nav.html %}
