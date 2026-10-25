---
title: while and until as statement modifiers
---

{% include menu.html %}

Both `while` and `until` can be used as statement modifiers, [in the same way](/essentials/conditional-checks/modifiers) as `if` and `unless`.

Look at an example that imitates modulo division, that is, finding the remainder:

```raku
my $x = 10;
$x -= 3 while $x > 2;
say $x; # 1
```

Here, `-=` is an operator that does subtraction and assignment together. In this case, `$x -= 3` is the same as `$x = $x - 3`.

The `while` modifier repeats the statement `$x -= 3` while the condition `$x > 2` stays `True`. As soon as the condition becomes `False`, the loop stops.

Note that if the condition is `False` from the start, the statement does not run at all.

The same program can be written with `until`. To do this, you must reverse the condition:

```raku
my $x = 10;
$x -= 3 until $x <= 2;
say $x; # 1
```

{% include nav.html %}
