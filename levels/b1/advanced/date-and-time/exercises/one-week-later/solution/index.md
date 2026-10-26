---
title: The solution of ’One week later‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `later(:days(7))` moves the date forward by seven days, which is one week. We could also write `+ 7`, but the named argument shows the unit clearly.

1. February 2027 has only 28 days. So one week after the 28th, Raku moves into March by itself. The result is `2027-03-07`.

1. If you call `day-of-week` on the new date, you get `7`. This makes the result easy to check. Exactly one week later, the day of the week must be the *same* as before. And `2027-02-28` is a Sunday (`7`) too, so `7` is the answer you expect.

{% include nav.html %}
