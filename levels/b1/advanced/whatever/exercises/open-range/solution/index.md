---
title: The solution of ’An open-ended range‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
say (2, 4 ... *).head(4);
```

🦋 You can find the source code in the file [open-range.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/open-range.raku).

## Output

```
(2 4 6 8)
```

## Comments

1. The starting values `2, 4` set an arithmetic step: each new number is two more. The `*` on its own at the end means that the sequence never ends.

1. `head(4)` takes only the first four values, `2, 4, 6, 8`. The sequence is lazy, so the endless rest is never calculated. Here, the star on its own means “whatever, with no upper limit”.

{% include nav.html %}
