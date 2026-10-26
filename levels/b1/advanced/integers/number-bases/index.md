---
title: Number bases
---

{% include menu.html %}

In your code, you do not have to write integers in the decimal system. Raku knows the three most common other bases right away. Each of them has its own prefix:

```raku
say 0xFF;   # 255  — hexadecimal (base 16)
say 0b1010; # 10   — binary (base 2)
say 0o17;   # 15   — octal (base 8)
```

Whatever base you use in the code, the value is the same integer. Only the way you write it is different.

For all other bases, there is the radix form `:base<number>`:

```raku
say :16<FF>;   # 255
say :2<1010>;  # 10
```

To go the other way, call the `base` method. It writes a number in another base and returns a string of digits:

```raku
say 255.base(16); # FF
say 10.base(2);   # 1010
```

{% include nav.html %}
