---
title: Quiz 2 — List and scalar vs. list and array
---

{% include menu.html %}

Look at the assignments below. On the right side, there are lists. What type of objects do the variables keep?

### 1

```raku
my $x = (100, 200, 300);
my @x = (100, 200, 300);

say $x.WHAT;
say @x.WHAT;
```

Choose the right answers:

{:.quiz-select}
(List) | The type of `$x` is&nbsp; (: (Array), (Int), (List) :)
(Array) | The type of `@x` is&nbsp; (: (Array), (Int), (List) :)

## 2*

This case is more difficult. Maybe you do not understand it now. Do not worry about it. The second part of the course comes back to this topic.

```raku
my $x = [100, 200, 300];
my @x = [100, 200, 300];

say $x.WHAT;
say @x.WHAT;
```

Choose the right answers:

{:.quiz-select}
(Array) | The type of `$x` is&nbsp; (: (Array), (Int), (List) :)
(Array) | The type of `@x` is&nbsp; (: (Array), (Int), (List) :)

{% include quiz.html %}

{% include nav.html %}
