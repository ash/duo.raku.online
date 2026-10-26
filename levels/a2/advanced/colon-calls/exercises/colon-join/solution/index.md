---
title: The solution of ’Join with a colon‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
say <a b c>.reverse.join: '-';
```

🦋 You can find the source code in the file [colon-join.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-join.raku).

## Output

```
c-b-a
```

## Comments

1. `.reverse` is in the middle of the chain. So it keeps its normal form. `join` is the last call. So it can use the colon. The colon passes `'-'` to it, just like `join('-')`.

1. After `.reverse`, the list is `c, b, a`. Then `join` puts dashes between the words. The result is `c-b-a`. The colon form works with normal values too, not only with blocks.

{% include nav.html %}
