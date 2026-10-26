---
title: 'Решение: Класс точки'
translations_gpt:
---

{% include menu.html %}

Вот один способ решить задачу.

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

1. Строки `has $.x` и `has $.y` создают атрибуты. Ещё они создают аксессоры для их чтения.

1. Каждый объект хранит свои `x` и `y`. `$a` и `$b` — объекты одного вида. Но они дают разные координаты. В этом главная идея атрибутов. У каждого экземпляра свои данные.

{% include nav.html %}
