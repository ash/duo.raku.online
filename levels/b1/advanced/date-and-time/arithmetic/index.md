---
title: Date arithmetic
---

{% include menu.html %}

You can do arithmetic with dates. This makes many everyday calculations simple.

If you add an integer to a date, it moves forward by that many days. The result is a new date. Its month and year change automatically when needed:

```raku
say Date.new(2026, 6, 27) + 7; # 2026-07-04
```

If you subtract one date from another, you get the number of days between them:

```raku
say Date.new(2026, 7, 4) - Date.new(2026, 6, 27); # 7
```

For bigger steps, there are the `later` and `earlier` methods. They take named arguments like `:days`, `:months` or `:years`:

```raku
say Date.new(2026, 6, 27).later(:days(10));    # 2026-07-07
say Date.new(2026, 6, 27).earlier(:months(2)); # 2026-04-27
```

These methods count correctly when a new month or year begins. So you never have to worry about how many days a month has.

{% include nav.html %}
