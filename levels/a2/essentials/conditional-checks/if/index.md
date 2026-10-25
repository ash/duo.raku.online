---
title: Conditional checks with if
---

{% include menu.html %}

`if` is a conditional check. It tests a condition. If the condition is `True`, `if` runs a block of code.

```raku
if 10 > 4 {
    say 'Mathematics works!';
}
```

You do not need to put the condition in round brackets. But you can if you want.

Of course, you can use variables in the tests:

```raku
my $flag = False;
if $flag {
    # . . . do something
}
```

Sometimes two or more checks use the same variable. Then you can write the comparisons as a chain:

```raku
my $x = 42;
if 40 < $x < 45 {
    say "Correct answer $x is given.";
}
```

Sometimes the condition is `False`. Then Raku does not run the block of code. The program just goes on.

```raku
say 'Begin';
if False {
    say 'This is never printed.';
}
say 'End';
```

This program prints only `Begin` and `End`.

{% include nav.html %}
