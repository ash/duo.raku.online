---
title: The solution of ’Dump a hash‘
---

{% include menu.html %}

Here is one possible solution to the task.

## Code

```raku
my %h = beta => 2, alpha => 1;
dd %h;
```

🦋 You can find the source code in the file [dump-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-a-hash.raku).

## Output

```
{:alpha(1), :beta(2)}
```

## Comments

1. `dd` prints the hash in a code-like form. Each pair is shown as `:key(value)`.

1. The keys are printed in sorted order, so `alpha` comes before `beta`. This happens even though `beta` was written first.

{% include nav.html %}
