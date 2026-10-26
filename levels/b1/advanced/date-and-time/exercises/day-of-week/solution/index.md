---
title: The solution of ’Day of the week‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `day-of-week` gives Monday the number `1` and Sunday the number `7`. So the two days of the weekend are exactly `6` and `7`.

1. The test `>= 6` gives `True` on Saturday and Sunday. On every other day, it gives `False`. The 14th of February 2027 is a Sunday (`7`), so the program prints `True`.

{% include nav.html %}
