---
title: 'Решение: Класс точки'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

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

🦋 Исходный код можно найти в файле [point-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/point-class.raku).

## Вывод

```
5
```

## Комментарии

1. Объявления `has $.x` и `has $.y` создают атрибуты, а также аксессоры для их чтения.

1. Каждый объект хранит свои собственные `x` и `y`. `$a` и `$b` — объекты одного вида, но они дают разные координаты. В этом и состоит главный смысл атрибутов: каждый экземпляр несёт свои данные.

{% include nav.html %}
