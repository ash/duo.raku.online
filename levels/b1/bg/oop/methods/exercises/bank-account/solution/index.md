---
title: 'Решение: Крачещ робот'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. Атрибутът `position` има `is rw`, така че методът може да го променя. Стойността му по подразбиране е `0`, така че нов робот започва от началото.

1. Методът `move` дава на параметъра си стойност по подразбиране, `$steps = 1`. Затова извикването `$r.move` без аргумент мести с една стъпка. А `$r.move(5)` и `$r.move(2)` местят с дадения брой стъпки. Трите извиквания дават общо `5 + 1 + 2`, така че крайната позиция е `8`.

{% include nav.html %}
