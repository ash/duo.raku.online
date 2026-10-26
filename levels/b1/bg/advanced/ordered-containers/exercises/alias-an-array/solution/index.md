---
title: 'Solution: Псевдоним на масив'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение на задачата.

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

1. Свързването `@alias := @original` не копира масива. То прави `@alias` друго име за същия контейнер-масив.

1. Този път промяната минава през `@original` и променя структурата: `push` добавя елемент. Двете имена са един и същ контейнер, затова `@alias` също вижда новия елемент. Винаги можете да използвате едното име вместо другото. Няма значение кое от тях използвате, за да четете или променяте масива.

{% include nav.html %}
