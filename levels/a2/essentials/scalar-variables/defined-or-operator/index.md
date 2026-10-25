---
title: The defined-or operator
---

{% include menu.html %}

Sometimes a variable has no value yet. Then you can use another value instead. For this, there is the `//` operator. It is called the _defined-or_ operator.

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

The first line gives `$a` a value. So the expression `$a // 'gamma'` uses the current value of `$a`. The variable `$b` is different. It has no value. So `$b // 'delta'` gives the value on the right. The program prints `delta`.

## //=

Together, `//` and `=` make the `//=` operator. It assigns a value only when the variable is not defined.

```raku
my $x;
$x //= 42;
say $x; # 42
```

{% include nav.html %}
