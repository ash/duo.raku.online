---
title: 'Розв''язання: Клас точки'
translations_gpt:
---

{% include menu.html %}

Ось один спосіб розв'язати задачу.

## Код

```raku
class Point {
    has $.x;
    has $.y;
}

my $a = Point.new(x => 3, y => 4);
my $b = Point.new(x => 0, y => 0);

my $dist = sqrt(($a.x - $b.x) ** 2 + ($a.y - $b.y) ** 2);
say $dist;
```

🦋 Вихідний код можна знайти у файлі [point-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/point-class.raku).

## Вивід

```
5
```

## Коментарі

1. Рядки `has $.x` та `has $.y` створюють атрибути. Вони також створюють аксесори, щоб їх читати.

1. Кожен об'єкт зберігає власні `x` та `y`. `$a` і `$b` — об'єкти одного виду. Але вони дають різні координати. Це головна ідея атрибутів. Кожен екземпляр має власні дані.

{% include nav.html %}
