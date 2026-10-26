---
title: Используйте модуль статистики
translations_gpt:
---

{% include menu.html %}

## Задача

У вас есть модуль `Stats.rakumod`, который экспортирует две подпрограммы: `total` и `mean`. Подпрограмма `mean` построена на основе `total`:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Напишите отдельную программу, которая использует этот модуль. Для списка `10, 20, 30, 40` она должна напечатать и сумму, и среднее значение.

## Пример

Если запустить её с модулем в пути поиска, программа печатает:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Решение

✅ [Посмотреть решение](solution)

{% include nav.html %}
