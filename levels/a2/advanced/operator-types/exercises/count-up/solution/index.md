---
title: The solution of ’Count up‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $n = 9;

say $n++;
say $n;
```

🦋 You can find the source code in the file [count-up.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/count-up.raku).

## Output

```
9
10
```

## Comments

1. `++` is a postfix operator. It comes after its operand. In an expression, `$n++` first gives the *old* value, `9`. This is what `say` prints. Only after that, `++` adds 1 to the variable.

1. The second line shows that `$n` is now `10`. The prefix form `++$n` works in another way. It first adds 1, and then it returns `10`.

{% include nav.html %}
