---
title: Working with time
---

{% include menu.html %}

If you need both the date and the time of day, use the `DateTime` type. You create it almost like a `Date`. But you also give the hour, the minute and the second:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt; # 2026-06-27T14:30:00Z
```

The default text form follows the ISO 8601 standard. It has the date, the letter `T` and the time. At the end, a `Z` stands for the UTC time zone.

A `DateTime` has the date parts that you already know. It also lets you read the parts of the time:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt.hour;   # 14
say $dt.minute; # 30
```

To get the current moment, call `DateTime.now`. Its output is not shown here, just as for `Date.today`. It changes every time you run the program.

{% include nav.html %}
