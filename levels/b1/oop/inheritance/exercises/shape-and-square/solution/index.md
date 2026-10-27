---
title: The solution of ’A shape and a square‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
class Shape {
    method name {
        'shape';
    }
    method describe {
        'I am a ' ~ self.name;
    }
}

class Square is Shape {
    method name {
        'square';
    }
}

say Square.new.describe;
```

🦋 You can find the source code in the file [shape-and-square.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/shape-and-square.raku).

## Output

```
I am a square
```

## Comments

1. `Square` inherits `describe` from `Shape`, and it overrides only `name`.

1. `describe` calls `self.name`, and this gets the overriding `name` from `Square`. So the description says `square` and not `shape`.

{% include nav.html %}
