---
title: 'Solution: Оператор за средна стойност'
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
sub infix:<avg>($a, $b) {
    ($a + $b) / 2
}

say 4 avg 10;
```

🦋 Можете да намерите пълния код във файла [average-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/average-operator.raku).

## Резултат

```
7
```

## Коментари

1. Декларираме оператора като `infix:<avg>`. Затова го пишете между двата му операнда, като `+` или `~`.

1. Тялото събира двата операнда. След това дели сумата на две. За `4` и `10` резултатът е `7`.

{% include nav.html %}
