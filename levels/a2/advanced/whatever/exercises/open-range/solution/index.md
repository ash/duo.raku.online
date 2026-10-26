---
title: The solution of ’An open-ended range‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The first values, `2, 4`, set the step. Each number is two more than the one before. The star alone at the end means that the sequence never ends.

1. `head(4)` takes only the first four values: `2, 4, 6, 8`. The sequence is lazy. So Raku never computes the endless rest. Here, the star alone means “whatever, with no upper limit”.

{% include nav.html %}
