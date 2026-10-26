---
title: 'Solution: Sort с двоеточие'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
my @words = <pear fig apple kiwi>;
say @words.sort: *.chars;
```

🦋 Можете да намерите изходния код във файла [colon-sort.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-sort.raku).

## Изход

```
(fig pear kiwi apple)
```

## Коментари

1. Двоеточието подава ключа за сортиране на `sort`. Около него не са нужни скоби.

1. `*.chars` е Whatever израз, който означава „броя на символите на всеки елемент“. `sort` го използва като ключ, затова най-кратките думи са първи. Първа е `fig` (3), след нея `pear` и `kiwi` (4), а после `apple` (5).

1. `pear` остава преди `kiwi`, защото двете думи имат еднаква дължина. Освен това `sort` е стабилно сортиране, което значи, че то запазва първоначалния ред на равните ключове.

{% include nav.html %}
