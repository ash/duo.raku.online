---
title: The solution of ’A Boolean check‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The `?` prefix sets Boolean context.

1. An empty array is false, and this is exactly what `if @array` depends on.

{% include nav.html %}
