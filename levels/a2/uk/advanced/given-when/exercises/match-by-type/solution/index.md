---
title: 'Розв''язання: Зіставлення за типом'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
my $value = 3.14;

given $value {
    when Int { say 'integer' }
    when Rat { say 'rational' }
    when Str { say 'string' }
}
```

🦋 Вихідний код можна знайти у файлі [match-by-type.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/match-by-type.raku).

## Вивід

```
rational
```

## Коментарі

1. Іноді `when` має тип. Тоді розумне зіставлення перевіряє, чи *має топік цей тип*. `3.14` — не `Int`. Тож Raku пропускає перший `when`.

1. У Raku число з десятковою крапкою, як-от `3.14`, — це `Rat`. `Rat` — це раціональне число, тобто дріб. Тож другий `when` збігається. Програма виводить `rational`.

{% include nav.html %}
