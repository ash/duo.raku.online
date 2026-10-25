---
title: while and until as statement modifiers
---

{% include menu.html %}

You can also use `while` and `until` as statement modifiers, that is, after a statement. This works [in the same way](/essentials/conditional-checks/modifiers) as with `if` and `unless`.

Here is an example that works like modulo division, that is, it finds the remainder:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Here, `-=` is an operator that subtracts and assigns in one step. So `$x -= 3` means the same as `$x = $x - 3`.

The `while` modifier repeats `$x -= 3` as long as the condition `$x > 2` is `True`. When it becomes `False`, the loop stops.

Note that if the condition is `False` from the start, the statement never runs.

The same program can use `until`, but then the condition must be reversed:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
