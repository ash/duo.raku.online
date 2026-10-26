---
title: Вправа «Скористайтеся модулем статистики»
translations_gpt:
---

{% include menu.html %}

## Завдання

У вас є модуль `Stats.rakumod`, який експортує дві підпрограми, `total` і `mean`. Підпрограма `mean` побудована на основі `total`:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Напишіть окрему програму, яка використовує цей модуль. Для списку `10, 20, 30, 40` вона має вивести і суму, і середнє.

## Приклад

Якщо запустити її з модулем на шляху пошуку, програма виводить:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Рішення

✅ [Дивіться рішення](solution)

{% include nav.html %}
