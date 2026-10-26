---
title: The solution of ’Join with a colon‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `.reverse` is in the middle of the chain, so it keeps its usual form. `join` comes last, so it can use the colon. It passes `'-'` in exactly the same way as `join('-')`.

1. The reversed list, `c, b, a`, is then joined with dashes, which gives `c-b-a`. The colon form works with ordinary values, not only with blocks.

{% include nav.html %}
