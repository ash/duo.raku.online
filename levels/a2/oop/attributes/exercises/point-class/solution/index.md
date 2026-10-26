---
title: The solution of ’A point class‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

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

🦋 You can find the source code in the file [point-class.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/point-class.raku).

## Output

```
5
```

## Comments

1. The lines `has $.x` and `has $.y` create the attributes. They also create accessors for reading them.

1. Each object keeps its own `x` and `y`. `$a` and `$b` are the same kind of object. But they give different coordinates. This is the main idea of attributes. Each instance has its own data.

{% include nav.html %}
