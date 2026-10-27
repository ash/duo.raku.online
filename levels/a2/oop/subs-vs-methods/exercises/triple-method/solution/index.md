---
title: The solution of ’Triple as a method‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
class Number {
    has $.n;

    method triple {
        $.n * 3;
    }
}

say Number.new(n => 7).triple;
```

🦋 You can find the source code in the file [triple-method.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-method.raku).

## Output

```
21
```

## Comments

1. Here, `triple` is a method. It belongs to the object. It works with the object’s own `n`. You do not pass anything to it.

1. Compare it with the subroutine. There, the data comes as an argument. Here, the data is in the object. Both programs give `21`.

{% include nav.html %}
