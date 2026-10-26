---
title: The solution of ’Rectangle area‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
class Rectangle {
    has $.width;
    has $.height;

    method area {
        $.width * $.height;
    }

    method describe {
        "area is " ~ self.area;
    }
}

say Rectangle.new(width => 3, height => 4).describe;
```

🦋 You can find the source code in the file [rectangle-area.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/rectangle-area.raku).

## Output

```
area is 12
```

## Comments

1. The method `area` reads the `width` and `height` of the object. It uses their accessors for this. Then it multiplies them. For a rectangle of `3` by `4`, the result is `12`.

1. The method `describe` does not do this calculation again. It calls `self.area`. This runs the method `area` on the same object. Then `describe` uses its result. In this way, you build bigger behaviour from small methods. Each method has only one job.

{% include nav.html %}
