---
title: 'Розв''язання: Зіставлення за типом'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Тут значення для зіставлення — це тип. Тоді розумне зіставлення перевіряє, чи *належить топік до цього типу*. `3.14` — не `Int`, тож перший `when` пропускається.

1. У Raku десяткове число на кшталт `3.14` — це `Rat`, раціональне число. Тож другий `when` збігається, і програма виводить `rational`.

{% include nav.html %}
