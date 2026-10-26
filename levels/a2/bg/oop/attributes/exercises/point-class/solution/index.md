---
title: 'Решение: Клас за точка'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

🦋 Намерете програмата във файла [point-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/point-class.raku).

## Изход

```
5
```

## Коментари

1. Редовете `has $.x` и `has $.y` създават атрибутите. Те създават и аксесори за четенето им.

1. Всеки обект пази свои `x` и `y`. `$a` и `$b` са обекти от един и същ вид. Но те дават различни координати. Това е главната идея на атрибутите. Всеки екземпляр има свои данни.

{% include nav.html %}
