---
title: The defined-or operator
---

{% include menu.html %}

The so-called _defined-or_ operator `//` helps when a variable has no value yet. In that case, it gives you another value to use instead.

```raku
my $a = 'alpha';
say $a // 'gamma';

my $b;
say $b // 'delta';
```

This program prints:

```
alpha
delta
```

The value of `$a` is set in the first line. So the expression `$a // 'gamma'` uses the current value of `$a`. The variable `$b`, on the other hand, did not get a starting value. So `$b // 'delta'` returns the operand on the right side, and the program prints `delta`.

## //=

When you combine `//` and `=`, you get the `//=` operator. It assigns a value only if the variable is not defined.

```raku
my $x;
$x //= 42;
say $x; # 42
```

{% include nav.html %}
