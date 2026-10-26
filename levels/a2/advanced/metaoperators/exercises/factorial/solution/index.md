---
title: The solution of ’Every factorial at once‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. There is a backslash inside the brackets. It makes `[*]` a *triangular* reduction. Such a reduction does not turn the list into one value. It keeps every step of the product: `1`, then `1*2`, then `1*2*3`, and so on.

1. Each product `1*2*...*k` is exactly _k!_. So the result is the list of factorials of `1` to `6`. A simple `[*] 1..6` gives only the last one, `720`.

{% include nav.html %}
