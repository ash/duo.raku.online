---
title: 'Решение: Сопоставление по типу'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Код

```raku
my $value = 3.14;

given $value {
    when Int { say 'integer' }
    when Rat { say 'rational' }
    when Str { say 'string' }
}
```

🦋 Исходный код можно найти в файле [match-by-type.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/match-by-type.raku).

## Вывод

```
rational
```

## Комментарии

1. Здесь значение для сопоставления — это тип. Тогда умное сопоставление проверяет, *относится ли* топик к этому типу. `3.14` не является `Int`, поэтому первый `when` пропускается.

1. В Raku десятичное число вроде `3.14` — это `Rat`, рациональное число. Поэтому второй `when` совпадает, и программа печатает `rational`.

{% include nav.html %}
