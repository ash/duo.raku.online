---
title: Choosing the right one
---

{% include menu.html %}

With everyday scalars, like numbers and strings, all three representations look the same. The difference appears with compound or undefined values. Here is a `Pair`, shown in three ways:

```raku
say (foo => 1).gist; # foo => 1
say (foo => 1).Str;  # foo	1
say (foo => 1).raku; # :foo(1)
```

Here is a rough general rule:

* [`.gist`](../gist) — for output that people will *read* (`say`, `note`).
* [`.Str`](../str) — for *plain text* output (`print`, `put`, variables inside strings, the `~` operator).
* [`.raku`](../raku-method) — for a *code-like* form when you debug (`dd`).

When you write a class, you can give each of these methods your own definition. Then your own objects print nicely too. We will come back to this when we [create classes](/oop/classes) in the next part.

{% include nav.html %}
