---
title: Date and time
---

{% include menu.html %}

Raku has built-in types for calendar dates and clock times. A calendar date has the `Date` type. To create one, you give the year, the month and the day:

```raku
my $d = Date.new(2026, 6, 27);
say $d; # 2026-06-27
```

When you have a date, you can read its parts:

```raku
my $d = Date.new(2026, 6, 27);
say $d.year;  # 2026
say $d.month; # 6
say $d.day;   # 27
```

The `day-of-week` method tells you the day of the week of a date. It gives a number from `1` for Monday to `7` for Sunday:

```raku
say Date.new(2026, 6, 27).day-of-week; # 6
```

June 27, 2026, is a Saturday, so the result is `6`.

The `is-leap-year` method checks whether the year of the date is a leap year:

```raku
say Date.new(2024, 1, 1).is-leap-year; # True
say Date.new(2026, 1, 1).is-leap-year; # False
```

Call `Date.today` to get today’s date. Its output is not shown here. It depends on the day when you run the program.

{% include nav.html %}
