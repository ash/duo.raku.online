---
title: 'Розв''язання: Оператор відсотка від'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
sub infix:<percent-of>($p, $whole) {
    $whole * $p / 100
}

say 20 percent-of 150;
```

🦋 Вихідний код можна знайти у файлі [percent-of-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/percent-of-operator.raku).

## Вивід

```
30
```

## Коментарі

1. Лівий операнд оператора — це відсоток, `$p`. Правий операнд — уся величина, `$whole`.

1. Помножте `$whole` на `$p` і поділіть на `100`. Це дає потрібну частину: `150 * 20 / 100` дорівнює `30`.

{% include nav.html %}
