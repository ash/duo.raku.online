---
title: Choosing the right one
---

{% include menu.html %}

Take simple scalars, like numbers and strings. Here, all three forms look the same. They are different for values with several parts. They are also different for undefined values. Here is a `Pair`, shown in three ways:

```raku
say (foo => 1).gist; # foo => 1
say (foo => 1).Str;  # foo	1
say (foo => 1).raku; # :foo(1)
```

Here is a simple rule:

* [`.gist`](../gist) — for output that people *read* (`say`, `note`).
* [`.Str`](../str) — for output that is *plain text* (`print`, `put`, values inside strings, the `~` operator).
* [`.raku`](../raku-method) — for a form *like code*, when you debug (`dd`).

You can write your own classes. In a class, you can define each of these methods yourself. Then your own objects print nicely too. We come back to this in the next part. There, we [create classes](/oop/classes).

{% include nav.html %}
