---
title: The solution of ’Power tower‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
say 2 ** 2 ** 3;
```

🦋 You can find the source code in the file [power-tower.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/power-tower.raku).

## Output

```
256
```

## Comments

1. `**` is right-associative. So the expression groups as `2 ** (2 ** 3)`.

1. That is `2 ** 8`, and the result is `256`. It is not `(2 ** 2) ** 3`. That would be `64`.

{% include nav.html %}
