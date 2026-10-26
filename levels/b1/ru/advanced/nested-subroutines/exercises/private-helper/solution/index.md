---
title: 'Решение: Приватный помощник'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
sub stats {
    sub double($x) { $x * 2 }

    say double(3) + double(5);
}

stats;
```

🦋 Исходный код можно найти в файле [private-helper.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/private-helper.raku).

## Вывод

```
16
```

## Комментарии

1. Помощник `double` определён внутри `stats`, поэтому он виден только там. Никакая другая часть программы не может его вызвать.

1. `stats` использует его дважды: `double(3)` равно `6`, а `double(5)` равно `10`. Их сумма равна `16`.

{% include nav.html %}
