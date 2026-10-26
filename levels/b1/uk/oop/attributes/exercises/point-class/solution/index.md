---
title: 'Розв''язання: Клас точки'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

1. Оголошення `has $.x` та `has $.y` створюють атрибути, а також їхні аксесори для читання.

1. Кожен об'єкт зберігає власні `x` та `y`. `$a` і `$b` — об'єкти одного виду, але вони дають різні координати. У цьому головний сенс атрибутів: кожен екземпляр несе власні дані.

{% include nav.html %}
