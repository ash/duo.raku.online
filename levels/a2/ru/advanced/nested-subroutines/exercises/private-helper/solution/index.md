---
title: 'Решение: Приватный помощник'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Помощник `double` находится внутри `stats`. Поэтому он виден только там. Другие части программы не могут его вызвать.

1. `stats` использует его два раза. `double(3)` равно `6`, а `double(5)` равно `10`. Их сумма — `16`.

{% include nav.html %}
