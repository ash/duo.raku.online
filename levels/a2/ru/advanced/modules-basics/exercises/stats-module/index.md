---
title: Используйте модуль статистики
translations_gpt:
---

{% include menu.html %}

## Задача

Вот модуль `Stats.rakumod`. Он экспортирует две подпрограммы: `total` и `mean`. Подпрограмма `mean` использует `total`:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Напишите отдельную программу. Она использует этот модуль. Она берёт список `10, 20, 30, 40`. Она печатает сумму и среднее значение этого списка.

## Пример

Запустите программу с модулем в пути поиска. Она печатает:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Решение

✅ [Посмотреть решение](solution)

{% include nav.html %}
