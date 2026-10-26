---
title: Integer methods
---

{% include menu.html %}

Integers have many useful methods and routines. Here are a few of them. You will use them often.

The `is-prime` method tells you if a number is prime:

```raku
say 17.is-prime; # True
say 18.is-prime; # False
```

The `gcd` and `lcm` operators work with two numbers. `gcd` gives the greatest common divisor. This is the biggest number that divides both numbers. `lcm` gives the least common multiple. This is the smallest number that you can divide by both numbers:

```raku
say 12 gcd 18; # 6
say 4 lcm 6;   # 12
```

The `abs` method gives the absolute value. This is the number without its minus sign. The `sign` method gives `-1`, `0`, or `1`. It is `-1` for a negative number. It is `0` for zero. It is `1` for a positive number:

```raku
say (-5).abs;  # 5
say (-5).sign; # -1
say 0.sign;    # 0
```

{% include nav.html %}
