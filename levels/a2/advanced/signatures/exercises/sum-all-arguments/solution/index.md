---
title: The solution of ’Sum all arguments‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
sub total(*@nums) {
    [+] @nums
}

say total(3, 5, 7);
```

🦋 You can find the source code in the file [sum-all-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/sum-all-arguments.raku).

## Output

```
15
```

## Comments

1. The slurpy parameter `*@nums` collects all the arguments into the array `@nums`. The number of arguments does not matter.

1. Then the reduction meta-operator `[+]` adds them all together. The result is `15`.

{% include nav.html %}
