---
title: The solution of ’An inner sum‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
sub compute {
    sub add($x, $y) {
        $x + $y;
    }

    add(2, 3) + add(4, 5);
}

say compute;
```

🦋 You can find the source code in the file [inner-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/inner-sum.raku).

## Output

```
14
```

## Comments

1. Inside `compute`, the nested `add` is used twice: `add(2, 3)` is `5`, and `add(4, 5)` is `9`.

1. Their sum, `14`, is what `compute` returns.

{% include nav.html %}
