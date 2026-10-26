---
title: 'Решение: Шагающий робот'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. У атрибута `position` есть `is rw`. Поэтому метод может его менять. По умолчанию он равен `0`, поэтому новый робот стоит в начале координат.

1. Метод `move` даёт своему параметру значение по умолчанию: `$steps = 1`. Поэтому `$r.move` без аргумента сдвигает робота на один шаг. `$r.move(5)` и `$r.move(2)` сдвигают его на заданное число шагов. Вместе три вызова дают `5 + 1 + 2`. Поэтому последняя позиция — `8`.

{% include nav.html %}
