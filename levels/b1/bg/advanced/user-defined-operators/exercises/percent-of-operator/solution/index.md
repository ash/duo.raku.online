---
title: 'Solution: Оператор за процент от'
---

{% include menu.html %}

Ето едно възможно решение.

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

1. Операторът приема процента `$p` като ляв операнд. Десният му операнд е цялата сума, `$whole`.

1. Като умножите `$whole` по `$p` и разделите на `100`, получавате частта, която ни трябва. Тук `150 * 20 / 100` е `30`.

{% include nav.html %}
