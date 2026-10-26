---
title: The solution of ’Classify the size‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. All three candidates take one `Int`. Without the `where` clauses, they clash. Raku cannot choose between them. The conditions on the first two make them different. The third candidate takes all other numbers.

1. The `where` clauses check `$n.abs`. So only the size of the number matters, not its sign. `size(7)` matches the first candidate and gives `small`. In `size(-250)`, the absolute value is `250`. It fails both conditions. So it goes to the last candidate, which takes everything else. The result is `large`.

1. Raku tests the candidates from the most specific to the most general. Here, this is exactly their order in the code.

{% include nav.html %}
