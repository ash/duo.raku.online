---
title: The solution of ’Force a number‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my @a = 1, 2, 3;
say +@a;
```

🦋 You can find the source code in the file [force-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/force-a-number.raku).

## Output

```
3
```

## Comments

1. The prefix `+` sets numeric context.

1. In numeric context, an array becomes the number of its elements. So the result is `3`.

{% include nav.html %}
