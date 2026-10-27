---
title: The solution of ’Count the attributes‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
class Point {
    has $.x;
    has $.y;
}

say Point.^attributes.elems;
```

🦋 You can find the source code in the file [count-attributes.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/object-introspection/count-attributes.raku).

## Output

```
2
```

## Comments

1. `.^attributes` returns a list. It has the attributes of the class.

1. `.elems` counts them. The class `Point` has two attributes. So the answer is `2`.

{% include nav.html %}
