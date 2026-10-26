---
title: The solution of ’Relaxing strict‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. `no strict` turns off a rule. The rule says that you must declare all variables. So you can assign to `$a` and `$b` without `my`. With the normal `strict`, these lines give errors at compile time.

1. After the assignment, the variables work as usual. So `$a + $b` is `30`. This change of the rule is lexical. It lasts only until the end of the current scope. This is the scope with `no strict`.

1. This is only a demonstration. We do not recommend it in practice. `strict` is on by default for a good reason. It finds typing mistakes in variable names at compile time. In real code, keep it on. Declare your variables with `my`.

{% include nav.html %}
