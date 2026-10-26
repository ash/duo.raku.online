---
title: The solution of ’The last three‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
say (5, 10 ... 50).tail(3);
```

🦋 You can find the source code in the file [last-three.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sequences/last-three.raku).

## Output

```
(40 45 50)
```

## Comments

1. The seeds, or starting values, `5, 10` set an arithmetic step of five. The sequence goes up to its endpoint `50`.

1. `tail(3)` returns the last three values of the finite sequence: `40, 45, 50`. In the same way, `head` would return the first few.

{% include nav.html %}
