---
title: The solution of ’Average of an array‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The reduction meta-operator `[+]` puts `+` between all the elements of `@data`. So `[+] @data` is the same as `10 + 20 + 30 + 40`. This is `100`. The code needs the parentheses. With them, the reduction happens before the division.

1. `@data.elems` is the number of elements. The sum divided by it gives the average, `25`. Sometimes the numbers do not divide evenly. Then Raku does not round the result. It gives an exact fraction, a `Rat`.

{% include nav.html %}
