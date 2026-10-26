---
title: The solution of ’One week later‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $later = Date.new(2027, 2, 28).later(:days(7));
say $later;
say $later.day-of-week;
```

🦋 You can find the source code in the file [one-week-later.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/one-week-later.raku).

## Output

```
2027-03-07
7
```

## Comments

1. `later(:days(7))` moves the date forward by seven days. That is one week. We could also write `+ 7`. But with the named argument, you see the unit.

1. February 2027 has 28 days. So the date one week after the 28th is in March. Raku goes into March by itself. The result is `2027-03-07`.

1. We call `day-of-week` on the new date. It gives `7`. With this number, you can easily check the result. Exactly one week later, the day of the week is the *same*. And `2027-02-28` is a Sunday (`7`) too. So `7` is the answer you expect here.

{% include nav.html %}
