---
title: The solution of ’Average of an array‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my @data = 10, 20, 30, 40;

say ([+] @data) / @data.elems;
```

🦋 You can find the source code in the file [sum-of-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/sum-of-array.raku).

## Output

```
25
```

## Comments

1. The reduction meta-operator `[+]` puts the `+` operator between all the elements of `@data`. So `[+] @data` is the same as `10 + 20 + 30 + 40`, which is `100`. The parentheses make sure that the reduction happens before the division.

1. `@data.elems` gives the number of elements. Dividing the sum by it gives the average, `25`. If the division were not exact, Raku would not round the result. It would give an exact `Rat` instead.

{% include nav.html %}
