---
title: 'Решение: Крачещ робот'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

🦋 Намерете програмата във файла [bank-account.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/bank-account.raku).

## Изход

```
8
```

## Коментари

1. Атрибутът `position` има `is rw`. Затова методът може да го променя. Стойността му по подразбиране е `0`, така че нов робот започва от началото.

1. Методът `move` дава на параметъра си стойност по подразбиране: `$steps = 1`. Затова `$r.move` без аргумент мести робота с една стъпка. `$r.move(5)` и `$r.move(2)` го местят с дадения брой. Трите извиквания добавят `5 + 1 + 2`. Затова последната позиция е `8`.

{% include nav.html %}
