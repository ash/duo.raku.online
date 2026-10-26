---
title: Date and time
---

{% include menu.html %}

Raku has types for dates and times. They are part of the language. A date in the calendar has the type `Date`. To make a date, give the year, the month, and the day:

```raku
my $d = Date.new(2026, 6, 27);
say $d; # 2026-06-27
```

A date has parts. You can read each of them:

```raku
my $d = Date.new(2026, 6, 27);
say $d.year;  # 2026
say $d.month; # 6
say $d.day;   # 27
```

The `day-of-week` method gives the day of the week for the date. The days have numbers. Monday is `1`, and Sunday is `7`:

```raku
say Date.new(2026, 6, 27).day-of-week; # 6
```

The 27th of June 2026 is a Saturday. So the result is `6`.

A leap year has 366 days. The `is-leap-year` method checks if the date is in a leap year:

```raku
say Date.new(2024, 1, 1).is-leap-year; # True
say Date.new(2026, 1, 1).is-leap-year; # False
```

To get today’s date, call `Date.today`. We do not show its output here. It depends on the day when you run the program.

{% include nav.html %}
