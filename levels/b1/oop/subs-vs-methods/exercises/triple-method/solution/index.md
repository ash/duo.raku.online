---
title: The solution of ’Triple as a method‘
---

{% include menu.html %}

Here is one possible solution.

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

1. As a method, `triple` belongs to the object and uses the object’s `n`. You do not pass anything in.

1. In the subroutine version, the data comes in as an argument. Here, the data lives in the object instead. Both versions give `21`.

{% include nav.html %}
