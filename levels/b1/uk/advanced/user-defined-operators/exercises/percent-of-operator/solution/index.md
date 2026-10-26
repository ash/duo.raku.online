---
title: 'Розв''язання: Оператор відсотка від'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Оператор бере відсоток `$p` лівим операндом. Його правий операнд — уся величина, `$whole`.

1. Якщо помножити `$whole` на `$p` і поділити на `100`, вийде потрібна частка. Тут `150 * 20 / 100` дорівнює `30`.

{% include nav.html %}
