---
title: The solution of ’A Boolean check‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my @empty;
say ?@empty;
```

🦋 You can find the source code in the file [boolean-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/boolean-check.raku).

## Output

```
False
```

## Comments

1. The prefix `?` sets Boolean context.

1. An empty array is false. This is why `if @array` works.

{% include nav.html %}
