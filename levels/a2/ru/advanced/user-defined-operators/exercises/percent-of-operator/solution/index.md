---
title: 'Решение: Оператор процента'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

## Код

```raku
sub infix:<percent-of>($p, $whole) {
    $whole * $p / 100
}

say 20 percent-of 150;
```

🦋 Исходный код можно найти в файле [percent-of-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/percent-of-operator.raku).

## Вывод

```
30
```

## Комментарии

1. Левый операнд оператора — это процент, `$p`. Правый операнд — это вся сумма, `$whole`.

1. Умножьте `$whole` на `$p` и разделите на `100`. Так получается нужная нам часть: `150 * 20 / 100` равно `30`.

{% include nav.html %}
