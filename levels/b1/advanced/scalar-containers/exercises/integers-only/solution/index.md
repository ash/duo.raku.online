---
title: The solution of ’Integers only‘
---

{% include menu.html %}

Here is one possible solution to the task.

## Code

```raku
my Int $cars;

$cars = 250.7.Int;
say $cars;
say $cars.WHAT;
```

🦋 You can find the source code in the file [integers-only.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/integers-only.raku).

## Output

```
250
(Int)
```

## Comments

1. The `Int` type constraint in `my Int $cars` makes the container refuse all non-integer values. Assigning `250.7`, a `Rat`, directly would give a compile-time error.

1. Calling `.Int` on the rational value `250.7` converts it to the integer `250`. It simply drops the fractional part. The new value fits the container. Do not confuse this with rounding.

1. The `.WHAT` pseudo-method shows that the value in the container has the type `Int`.

{% include nav.html %}
