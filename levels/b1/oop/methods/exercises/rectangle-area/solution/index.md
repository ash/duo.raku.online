---
title: The solution of ’Rectangle area‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The `area` method reads the object’s own `width` and `height` through their accessors. Then it multiplies them. For a `3` by `4` rectangle, the result is `12`.

1. The `describe` method does not repeat the calculation. Instead, it calls `self.area` to run the `area` method on the same object. Then it reuses the result. In this way, you build larger behaviour from smaller methods. Each method then has just one job.

{% include nav.html %}
