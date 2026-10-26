---
title: Използвайте модул за статистика
translations_gpt:
---

{% include menu.html %}

## Задача

Ето модул, `Stats.rakumod`. Той експортира две подпрограми: `total` и `mean`. Подпрограмата `mean` използва `total`:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Напишете отделна програма. Тя използва този модул. Програмата взема списъка `10, 20, 30, 40`. Тя отпечатва сумата и средното аритметично, или средната стойност, на този списък.

## Пример

Стартирайте програмата с модула в пътя за търсене. Тя отпечатва:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Решение

✅ [Вижте решението](solution)

{% include nav.html %}
