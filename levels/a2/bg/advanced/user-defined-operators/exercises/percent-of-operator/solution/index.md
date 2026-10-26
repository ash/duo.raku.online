---
title: 'Solution: Оператор за процент от'
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
sub infix:<percent-of>($p, $whole) {
    $whole * $p / 100
}

say 20 percent-of 150;
```

🦋 Можете да намерите пълния код във файла [percent-of-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/percent-of-operator.raku).

## Резултат

```
30
```

## Коментари

1. Левият операнд на оператора е процентът, `$p`. Десният операнд е цялата сума, `$whole`.

1. Умножете `$whole` по `$p` и разделете на `100`. Това дава частта, която ни трябва: `150 * 20 / 100` е `30`.

{% include nav.html %}
