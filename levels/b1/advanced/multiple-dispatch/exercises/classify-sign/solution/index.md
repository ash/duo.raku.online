---
title: The solution of ’Classify the size‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
multi sub size(Int $n where $n.abs < 10)  { 'small' }
multi sub size(Int $n where $n.abs < 100) { 'medium' }
multi sub size(Int $n)                    { 'large' }

say size(7);
say size(30);
say size(-250);
```

🦋 You can find the source code in the file [classify-sign.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/classify-sign.raku).

## Output

```
small
medium
large
```

## Comments

1. All three candidates take a single `Int`, so they would clash without the `where` clauses. The conditions on the first two make them different. The third one catches everything else.

1. The `where` clauses test `$n.abs`. So only the size of the number decides the result, and the sign is ignored. `size(7)` matches the first candidate (`small`). In `size(-250)`, the absolute value is `250`. It fails both conditions and goes on to the catch-all candidate (`large`).

1. The candidates are tested from the most specific one to the most general one. Here, this is exactly the order in which they are written.

{% include nav.html %}
