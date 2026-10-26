---
title: The solution of ’Weekday numbers‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Day(5);
say Day(1);
```

🦋 You can find the source code in the file [weekday-values.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/weekday-values.raku).

## Output

```
Fri
Mon
```

## Comments

1. We write the constants as pairs. So we can choose the numbers. Here they start from `1`.

1. `Day(5)` calls the enum type. It searches the other way, from the number to the constant. It finds the constant with the value `5`. This constant is `Fri`. In the same way, `Day(1)` gives `Mon`. `Fri.value` does the opposite. It goes from the name to the number.

{% include nav.html %}
