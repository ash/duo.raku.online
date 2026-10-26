---
title: The solution of ’A private helper‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
sub stats {
    sub double($x) { $x * 2 }

    say double(3) + double(5);
}

stats;
```

🦋 You can find the source code in the file [private-helper.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/private-helper.raku).

## Output

```
16
```

## Comments

1. The helper `double` is inside `stats`. So you can see it only there. Other parts of the program cannot call it.

1. `stats` uses it two times. `double(3)` is `6`, and `double(5)` is `10`. Their sum is `16`.

{% include nav.html %}
