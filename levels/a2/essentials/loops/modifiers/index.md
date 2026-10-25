---
title: while and until as statement modifiers
---

{% include menu.html %}

You can also write `while` and `until` after a statement. This form is called a statement modifier. It works [like](/essentials/conditional-checks/modifiers) `if` and `unless` after a statement.

Here is an example. It finds the remainder of a division:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Here, `-=` is an operator. It subtracts and assigns at the same time. So `$x -= 3` means the same as `$x = $x - 3`.

The `while` modifier repeats the statement `$x -= 3`. It repeats it while the condition `$x > 2` is `True`. When the condition becomes `False`, the loop stops.

If the condition is `False` at the start, the statement does not run at all.

You can write the same program with `until`. For this, you must use the opposite condition:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
