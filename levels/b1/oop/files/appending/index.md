---
title: Appending to a file
---

{% include menu.html %}

By default, `spurt` replaces everything that was in the file. To add to the end of an existing file instead, pass the named argument `:append`:

```raku
spurt 'log.txt', "line1\n";
spurt 'log.txt', "line2\n", :append;

print slurp 'log.txt';
```

The second `spurt` keeps the old content and adds the new line after it. So in the end, the file contains both lines:

```
line1
line2
```

Without `:append`, the second call would write over the file. Only `line2` would be left. Appending is useful for things like log files. Each run of a program adds to a growing record, instead of starting again.

{% include nav.html %}
