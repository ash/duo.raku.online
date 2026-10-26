---
title: The solution of ’Every factorial at once‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
say [\*] 1..6;
```

🦋 You can find the source code in the file [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/factorial.raku).

## Output

```
(1 2 6 24 120 720)
```

## Comments

1. The backslash inside the brackets makes `[*]` a *triangular* reduction. It does not reduce the list to a single value. Instead, it keeps every partial product: `1`, then `1*2`, then `1*2*3`, and so on.

1. Each partial product `1*2*...*k` is exactly _k!_. So the result is the list of factorials of `1` to `6`. A simple `[*] 1..6` would give only the last of them, `720`.

{% include nav.html %}
