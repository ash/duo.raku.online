---
title: The solution of ’Integers only‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The type constraint `Int` in `my Int $cars` is a rule for the container. The container does not accept values that are not integers. You cannot assign `250.7` directly. This value is a `Rat`. Raku gives an error at compile time, before the program runs.

1. The program calls `.Int` on the rational value `250.7`. This converts it to the integer `250`. The method just drops the part after the decimal point. The new value fits the container. Note that this is not the same as rounding.

1. The `.WHAT` pseudo-method shows the type of the stored value. It is `Int`.

{% include nav.html %}
