---
title: The solution of ’Traffic lights‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `my Light $current` is a normal variable, and you can change it. The only limit is that it must hold a `Light`. When you assign the next constant, the light moves on. The number follows the name each time: `0`, `1`, `2`.

1. `$current++` looks like it should go to the next light by itself. But it fails with a type-check error. `++` uses the constant as its plain number and returns an `Int` (`red` becomes `1`). But an `Int` does not fit the `Light` type. So you move the light by assigning the next constant, as above.

1. The type check works for every assignment, not just the first one. `$current` accepts `red`, `amber` or `green`. Something that is not a `Light` gives a type-check error. This is true for a plain number or a string, for example.

{% include nav.html %}
