---
title: while and until as statement modifiers
---

{% include menu.html %}

You can also put `while` or `until` after a statement. We call this a statement modifier. You already know it [from `if` and `unless`](/essentials/conditional-checks/modifiers).

Here is an example. It finds the remainder, or what is left after division:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Here, `-=` is an operator. It does two things. It takes a number away. It also saves the result in the variable. So `$x -= 3` is the same as `$x = $x - 3`.

The `while` modifier repeats the statement `$x -= 3`. It repeats it while `$x > 2` is `True`. When `$x > 2` is `False`, the loop stops.

If the condition is `False` at the start, the statement never runs.

You can write the same program with `until`. Then you need the opposite condition:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
