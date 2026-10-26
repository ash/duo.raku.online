---
title: The solution of ’Powers of two‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The three starting values `1, 2, 4` grow by multiplication. So `...` sees that this is a geometric sequence. Because the endpoint is `Inf`, it never stops by itself.

1. `head(8)` takes only the first eight values. Because the sequence is lazy, the other values are never generated. This is the only reason why it is safe to write an infinite sequence.

{% include nav.html %}
