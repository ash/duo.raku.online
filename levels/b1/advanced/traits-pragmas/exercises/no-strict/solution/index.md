---
title: The solution of ’Relaxing strict‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
no strict;

$a = 10;
$b = 20;
say $a + $b;
```

🦋 You can find the source code in the file [no-strict.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/no-strict.raku).

## Output

```
30
```

## Comments

1. `no strict` turns off the rule that variables must be declared. So you can assign to `$a` and `$b` without a `my`. With the default `strict`, each of these lines would be a compile-time error.

1. After you assign them, the variables behave as usual, so `$a + $b` is `30`. This weaker rule is lexical. It lasts only until the end of the scope where `no strict` appears.

1. This is only a demonstration, and we do not recommend it in practice. `strict` is on by default for a good reason. It catches typos in variable names at compile time. In real code, keep it on and declare your variables with `my`.

{% include nav.html %}
