---
title: The solution of ’An inner sum‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. `compute` uses the nested `add` two times. `add(2, 3)` is `5`, and `add(4, 5)` is `9`.

1. Their sum is `14`. `compute` returns this value.

{% include nav.html %}
