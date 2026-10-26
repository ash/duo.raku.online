---
title: The solution of ’A formula on the class‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
class Geometry {
    method circle-area($r) {
        (π * $r * $r).round
    }
}

say Geometry.circle-area(10);
```

🦋 You can find the source code in the file [speed-limit.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/speed-limit.raku).

## Output

```
314
```

## Comments

1. The method does not use any attribute, only its parameter `$r`. So you can call it on the class itself, without creating an object first.

1. `Geometry.circle-area(10)` calls the method on the type object and passes `10` to it. The result is `π * 10 * 10`, which is `314` after rounding.

{% include nav.html %}
