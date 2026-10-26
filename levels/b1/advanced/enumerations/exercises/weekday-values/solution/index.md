---
title: The solution of ’Weekday numbers‘
---

{% include menu.html %}

Here is one possible solution.

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

1. If you write the constants as pairs, you can choose the numbers. Here they start from `1`.

1. If you call the enum type as `Day(5)`, it does a reverse lookup. It finds the constant with the value `5`, which is `Fri`. In the same way, `Day(1)` gives `Mon`. This is the opposite of `Fri.value`, which goes from the name to the number.

{% include nav.html %}
