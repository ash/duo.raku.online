---
title: 'Solution: Sort с двоеточие'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. Двоеточието дава ключа за сортиране на `sort`. Не ви трябват скоби около него.

1. `*.chars` е Whatever израз. Той означава „броя на символите на всеки елемент“. `sort` го използва като ключ. Затова най-кратката дума е първа: `fig` (3). След нея идват `pear` и `kiwi` (4). После идва `apple` (5).

1. `pear` остава преди `kiwi`. Двете думи имат еднаква дължина. А `sort` е стабилно сортиране. То пази стария ред на елементите с равни ключове.

{% include nav.html %}
