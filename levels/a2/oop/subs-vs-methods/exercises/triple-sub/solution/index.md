---
title: The solution of ’Triple as a subroutine‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
sub triple($x) {
    $x * 3;
}

say triple(7);
```

🦋 You can find the source code in the file [triple-sub.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-sub.raku).

## Output

```
21
```

## Comments

1. Here, `triple` is a subroutine. It stands alone. It gets the value for its work as an argument.

1. The other exercise solves the same task with a method. So you can compare the two ways.

{% include nav.html %}
