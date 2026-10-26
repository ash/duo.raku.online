---
title: Working with time
---

{% include menu.html %}

Sometimes you need the date and also the time of day. Then use the `DateTime` type. You make it almost like a `Date`. But you also give the hour, the minute, and the second:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt; # 2026-06-27T14:30:00Z
```

By default, the text follows the ISO 8601 standard. First comes the date. Then come the letter `T` and the time. At the end is the letter `Z`. It stands for the time zone UTC.

You already know the parts of a date. A `DateTime` has them too. It also has the parts of the time:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt.hour;   # 14
say $dt.minute; # 30
```

To get the time right now, call `DateTime.now`. We do not show its output here. We did the same for `Date.today`. The output changes every time the program runs.

{% include nav.html %}
