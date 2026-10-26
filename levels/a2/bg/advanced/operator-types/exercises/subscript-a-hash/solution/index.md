---
title: 'Solution: Индексиране на хеш'
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my %h = a => 1;
say %h<a>;
```

🦋 Можете да намерите пълния код във файла [subscript-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/subscript-a-hash.raku).

## Резултат

```
1
```

## Коментари

1. Индексът `< >` е постциркумфиксен оператор. Той идва след терм, тук това е хешът. И стои около ключа.

1. `%h<a>` връща стойността за ключа `a`. Тази стойност е `1`.

{% include nav.html %}
