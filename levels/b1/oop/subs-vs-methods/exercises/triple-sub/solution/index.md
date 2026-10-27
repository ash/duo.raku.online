---
title: The solution of ’Triple as a subroutine‘
---

{% include menu.html %}

Here is one possible solution.

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

1. As a subroutine, `triple` stands on its own. It gets the value that it works on as an argument.

1. The other exercise in this pair solves the same task with a method. So you can compare both approaches.

{% include nav.html %}
