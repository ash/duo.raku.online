---
title: Integer methods
---

{% include menu.html %}

Integers have many useful methods and routines. Here are a few that you will often need.

The `is-prime` method checks whether a number is prime:

```raku
say 17.is-prime; # True
say 18.is-prime; # False
```

The `gcd` operator gives the greatest common divisor of two numbers. The `lcm` operator gives their least common multiple:

```raku
say 12 gcd 18; # 6
say 4 lcm 6;   # 12
```

The `abs` method returns the absolute value of a number. The `sign` method returns `-1`, `0`, or `1`. This depends on whether the number is negative, zero, or positive:

```raku
say (-5).abs;  # 5
say (-5).sign; # -1
say 0.sign;    # 0
```

{% include nav.html %}
