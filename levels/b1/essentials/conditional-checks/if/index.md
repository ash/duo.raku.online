---
title: Conditional checks with if
---

{% include menu.html %}

The `if` conditional check looks at a condition. When the condition is `True`, a block of code runs.

```raku
if 10 > 4 {
    say 'Mathematics works!';
}
```

Note that you do not need to put the condition in parentheses. But you can if you want to.

Of course, you are very welcome to use variables in the tests:

```raku
my $flag = False;
if $flag {
    # . . . do something
}
```

If several checks use the same variable, you can put the comparisons in a chain:

```raku
my $x = 42;
if 40 < $x < 45 {
    say "Correct answer $x is given.";
}
```

If the condition is not met, its block of code does not run. The program then continues as usual.

```raku
say 'Begin';
if False {
    say 'This is never printed.';
}
say 'End';
```

This program just prints `Begin` and `End`.

{% include nav.html %}
