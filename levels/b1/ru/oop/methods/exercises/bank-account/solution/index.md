---
title: 'Решение: Шагающий робот'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

🦋 Исходный код можно найти в файле [bank-account.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/bank-account.raku).

## Вывод

```
8
```

## Комментарии

1. У атрибута `position` есть `is rw`, поэтому метод может его менять. Его значение по умолчанию — `0`, так что новый робот начинает путь в начале координат.

1. Метод `move` даёт своему параметру значение по умолчанию, `$steps = 1`. Поэтому вызов `$r.move` без аргумента сдвигает на один шаг. А `$r.move(5)` и `$r.move(2)` сдвигают на заданное число шагов. В сумме три вызова дают `5 + 1 + 2`, поэтому итоговая позиция равна `8`.

{% include nav.html %}
