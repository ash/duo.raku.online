---
title: The solution of ’Prime or not‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
say 97.is-prime;
say 91.is-prime;
```

🦋 You can find the source code in the file [prime-check.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/prime-check.raku).

## Output

```
True
False
```

## Comments

1. You can divide `97` only by `1` and by itself. So `is-prime` returns `True`.

1. `91` looks prime, but it is `7 × 13`. So `is-prime` returns `False`. The method finds the factors for you. That is why we have this method.

{% include nav.html %}
