---
title: 'Розв''язання: Робот, що крокує'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

## Код

```raku
class Robot {
    has $.position is rw = 0;

    method move($steps = 1) {
        $.position += $steps;
    }
}

my $r = Robot.new;
$r.move(5);
$r.move;
$r.move(2);

say $r.position;
```

🦋 Вихідний код можна знайти у файлі [bank-account.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/bank-account.raku).

## Вивід

```
8
```

## Коментарі

1. Атрибут `position` має `is rw`, тож метод може його змінювати. Його типове значення — `0`, тому новий робот починає з початку координат.

1. Метод `move` дає своєму параметру типове значення, `$steps = 1`. Тож виклик `$r.move` без аргументу пересуває на один крок. Але `$r.move(5)` та `$r.move(2)` пересувають на задану кількість кроків. Три виклики разом дають `5 + 1 + 2`, тож остаточна позиція — `8`.

{% include nav.html %}
