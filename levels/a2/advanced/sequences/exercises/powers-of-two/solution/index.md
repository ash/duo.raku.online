---
title: The solution of ’Powers of two‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
say (1, 2, 4 ... Inf).head(8);
```

🦋 You can find the source code in the file [powers-of-two.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sequences/powers-of-two.raku).

## Output

```
(1 2 4 8 16 32 64 128)
```

## Comments

1. The three values at the start are `1, 2, 4`. They grow by multiplication. So `...` sees a geometric sequence. The endpoint is `Inf`. So the sequence never stops by itself.

1. `head(8)` takes only the first eight values. The sequence is lazy. So Raku never makes the other values. Only because of this, you can safely write an infinite sequence.

{% include nav.html %}
