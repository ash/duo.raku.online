---
title: The solution of ’An anonymous square‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
say (1, 2, 3).map(sub ($x) { $x * $x });
```

🦋 You can find the source code in the file [anonymous-square.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/anonymous-square.raku).

## Output

```
(1 4 9)
```

## Comments

1. The subroutine `sub ($x) { $x * $x }` has no name. The program never keeps it in a variable. It gives it directly to `map` as an argument.

1. `map` uses it on each element of `1, 2, 3`. It multiplies each number by itself. The result is `(1 4 9)`. People most often write an anonymous subroutine for this. They pass it directly, like here.

{% include nav.html %}
