---
title: 'Решение: Сопоставление по типу'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Иногда в `when` стоит тип. Тогда умное сопоставление проверяет, *имеет ли* топик этот тип. `3.14` — это не `Int`. Поэтому Raku пропускает первый `when`.

1. В Raku число с десятичной точкой, например `3.14`, — это `Rat`. `Rat` — это рациональное число, то есть дробь. Поэтому второй `when` совпадает. Программа печатает `rational`.

{% include nav.html %}
