---
title: The solution of ’Weeks until Christmas‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my $days = Date.new(2026, 12, 25) - Date.new(2026, 6, 27);
say "{$days div 7} weeks and {$days % 7} days";
```

🦋 You can find the source code in the file [days-until-christmas.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/days-until-christmas.raku).

## Output

```
25 weeks and 6 days
```

## Comments

1. When you subtract one `Date` from another, you get the number of days between them. Here it is `181`. So you do not have to count the days in each month yourself. The later date is written first, so the result is positive.

1. Integer division with `div` gives the number of whole weeks: `181 div 7` is `25`. The modulo operator `%` gives the days that are left over: `181 % 7` is `6`.

{% include nav.html %}
