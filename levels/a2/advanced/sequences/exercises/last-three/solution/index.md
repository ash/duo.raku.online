---
title: The solution of ’The last three‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The seeds are the values at the start: `5, 10`. They give a step of five. The sequence goes up to its endpoint, `50`.

1. `tail(3)` returns the last three values of the sequence: `40, 45, 50`. The sequence is finite, so it has an end. `head` works in the same way. It returns the first few values.

{% include nav.html %}
