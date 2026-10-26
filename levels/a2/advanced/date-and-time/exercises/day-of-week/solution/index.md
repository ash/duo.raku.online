---
title: The solution of ’Day of the week‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $date = Date.new(2027, 2, 14);
say $date.day-of-week >= 6;
```

🦋 You can find the source code in the file [day-of-week.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/day-of-week.raku).

## Output

```
True
```

## Comments

1. `day-of-week` gives the days numbers from `1` to `7`. Monday is `1`, and Sunday is `7`. So the two days of the weekend are `6` and `7`.

1. The test `>= 6` is `True` for Saturday and for Sunday. It is `False` for the other days. The 14th of February 2027 is a Sunday. Its number is `7`. So the program prints `True`.

{% include nav.html %}
