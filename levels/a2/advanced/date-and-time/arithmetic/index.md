---
title: Date arithmetic
---

{% include menu.html %}

You can do arithmetic with dates. Then many everyday calculations are easy.

You can add an integer to a date. Then the date moves forward by that many days. You get a new date. If needed, Raku also changes the month and the year:

```raku
say Date.new(2026, 6, 27) + 7; # 2026-07-04
```

You can also subtract one date from another. You get the number of days between them:

```raku
say Date.new(2026, 7, 4) - Date.new(2026, 6, 27); # 7
```

For bigger steps, use the methods `later` and `earlier`. They take named arguments, like `:days`, `:months`, or `:years`:

```raku
say Date.new(2026, 6, 27).later(:days(10));    # 2026-07-07
say Date.new(2026, 6, 27).earlier(:months(2)); # 2026-04-27
```

These methods always give the correct date. They also work when a new month or year starts. So you never need to know how many days a month has.

{% include nav.html %}
