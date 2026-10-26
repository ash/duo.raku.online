---
title: The solution of ’Count up‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `++` is a postfix operator, which means it comes after its operand. In an expression, `$n++` first gives the *old* value `9`. This is what `say` prints. Only then does it increase the variable.

1. The second line shows that `$n` has really become `10`. The prefix form `++$n` would add one first and then return `10`.

{% include nav.html %}
