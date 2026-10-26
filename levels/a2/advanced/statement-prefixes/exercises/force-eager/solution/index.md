---
title: The solution of ’Force eager evaluation‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
say (1 .. Inf).is-lazy;
say (eager 1..3).is-lazy;
say (lazy 1..3).is-lazy;
```

🦋 You can find the source code in the file [force-eager.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/force-eager.raku).

## Output

```
True
False
True
```

## Comments

1. Raku cannot compute a range up to `Inf` all at once. So the range is lazy, and `.is-lazy` gives `True`.

1. The `eager` prefix makes Raku produce a list at once. So the result is not lazy any more, and `.is-lazy` gives `False`. This is the exact opposite of marking a list `lazy`.

1. Do not use `eager` with a range that has no end. `eager 1 .. Inf` tries to compute every element at once. So the program just hangs. It never finishes. It uses more and more memory. This goes on until the program is stopped. Use `eager` only with lists that you know have an end.

1. It also works the other way. `lazy 1..3` marks a short range as lazy. This range has an end, but it is still lazy. So `.is-lazy` gives `True`. The prefix makes any list lazy, however small. A list does not have to be infinite to be lazy.

{% include nav.html %}
