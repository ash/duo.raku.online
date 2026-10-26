---
title: The solution of ’Weeks until Christmas‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. You can subtract one `Date` from another. The result is the number of days between them. Here it is `181`. So you do not count the days of each month yourself. The later date comes first. So the result is positive.

1. The operator `div` divides integers. It gives the number of full weeks: `181 div 7` is `25`. The modulo operator `%` gives what is left after the division. These are the extra days: `181 % 7` is `6`.

{% include nav.html %}
