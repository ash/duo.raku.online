---
title: The solution of ’Traffic lights‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
enum Light <red amber green>;

my Light $current = red;
say "$current is {$current.value}";

$current = amber;
say "$current is {$current.value}";

$current = green;
say "$current is {$current.value}";
```

🦋 You can find the source code in the file [traffic-enum.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/traffic-enum.raku).

## Output

```
red is 0
amber is 1
green is 2
```

## Comments

1. `my Light $current` is a normal variable. You can change its value. But it can only hold a `Light`. Assign the next constant, and the light moves on. Each time, the number changes with the name: `0`, `1`, `2`.

1. It looks like `$current++` goes to the next light by itself. But it fails with a type-check error. `++` sees the constant only as its number. It returns an `Int`: `red` becomes `1`. But an `Int` is not a `Light`. So, to move the light, assign the next constant, as above.

1. Raku checks the type at each assignment, not only at the first. `$current` takes `red`, `amber`, or `green`. It does not take other values, like a number or a string. They are not a `Light`. Such an assignment gives a type-check error.

{% include nav.html %}
