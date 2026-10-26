---
title: 'Solution: Псевдоним на масив'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my @original = 10, 20, 30;
my @alias := @original;

@original.push(40);
say @alias;
```

🦋 Можете да намерите изходния код във файла [alias-an-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/alias-an-array.raku).

## Резултат

```
[10 20 30 40]
```

## Коментари

1. Вижте свързването `@alias := @original`. То прави `@alias` второ име за същия контейнер-масив. То не копира масива.

1. Този път програмата променя масива чрез `@original`. Тя променя структурата: `push` добавя елемент. Двете имена принадлежат на един и същ контейнер. Затова `@alias` също вижда новия елемент. Двете имена работят по абсолютно един и същ начин. Можете да четете или променяте масива с всяко от тях.

{% include nav.html %}
