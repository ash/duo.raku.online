---
title: The solution of ’Count the attributes‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `.^attributes` returns the list of attributes of the class.

1. `.elems` counts them. The `Point` class declares two attributes, so the answer is `2`.

{% include nav.html %}
