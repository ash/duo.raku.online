---
title: 'Solution: Оператор за повдигане в квадрат'
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
sub postfix:<²>($x) {
    $x ** 2
}

say 5²;
```

🦋 Можете да намерите пълния код във файла [square-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/square-operator.raku).

## Резултат

```
25
```

## Коментари

1. Операторът е деклариран като `postfix:<²>`. Затова неговият символ, горният индекс две, идва след операнда му, както в `5²`.

1. Тялото повдига операнда на степен две, затова `5²` дава `25`. Нищо не ви пречи да използвате Unicode символ, който прилича на обичайния математически запис.

{% include nav.html %}
