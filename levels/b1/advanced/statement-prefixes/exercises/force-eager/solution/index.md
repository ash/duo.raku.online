---
title: The solution of ’Force eager evaluation‘
---

{% include menu.html %}

Here is one possible solution.

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

1. A range up to `Inf` cannot be computed all at once, so it is lazy. `.is-lazy` returns `True`.

1. The `eager` prefix makes Raku produce a list at once. So the result is no longer lazy. `.is-lazy` returns `False`. This is the direct opposite of marking a list `lazy`.

1. Do not use `eager` with a range that has no end. `eager 1 .. Inf` tries to compute every element at once. So the program simply hangs and uses more and more memory until it is killed. `eager` is only safe with lists that you know are finite.

1. The reverse also works. `lazy 1..3` marks even a short, finite range as lazy, so `.is-lazy` returns `True`. The prefix sets the laziness flag, no matter how small the list is. A list does not have to be infinite to be lazy.

{% include nav.html %}
