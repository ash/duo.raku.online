---
title: The solution of ’A formula on the class‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The method does not use any attribute. It works only with its parameter `$r`. So you can call it on the class itself. You do not need to make an object first.

1. `Geometry.circle-area(10)` calls the method on the type object. It passes `10` to the method. The result is `π * 10 * 10`. After rounding, it is `314`.

{% include nav.html %}
