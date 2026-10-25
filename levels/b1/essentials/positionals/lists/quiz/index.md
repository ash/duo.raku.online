---
title: Quiz 2 — List and scalar vs. list and array
---

{% include menu.html %}

In the assignments below, there are lists on the right-hand side. What type of objects do the variables keep?

### 1

```raku
my $x = (100, 200, 300);
my @x = (100, 200, 300);

say $x.WHAT;
say @x.WHAT;
```

Choose the correct answers:

{:.quiz-select}
(List) | The type of `$x` is&nbsp; (: (Array), (Int), (List) :)
(Array) | The type of `@x` is&nbsp; (: (Array), (Int), (List) :)

## 2*

Here is a more difficult case. Do not worry if you do not understand it yet. We will come back to this topic in the second part of the course.

```raku
my $x = [100, 200, 300];
my @x = [100, 200, 300];

say $x.WHAT;
say @x.WHAT;
```

Choose the correct answers:

{:.quiz-select}
(Array) | The type of `$x` is&nbsp; (: (Array), (Int), (List) :)
(Array) | The type of `@x` is&nbsp; (: (Array), (Int), (List) :)

{% include quiz.html %}

{% include nav.html %}
