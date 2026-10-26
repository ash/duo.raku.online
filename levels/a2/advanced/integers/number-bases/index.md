---
title: Number bases
---

{% include menu.html %}

You can write an integer in other bases too. It does not have to be base 10. Base 10 is the decimal system. Raku knows the three most common other bases. You do not need anything extra for them. Each base has its own prefix:

```raku
say 0xFF;   # 255  — hexadecimal (base 16)
say 0b1010; # 10   — binary (base 2)
say 0o17;   # 15   — octal (base 8)
```

You can use any base in the code. The value is always the same integer. Only the way of writing it is different.

For any other base, use the form `:base<number>`. It is called the radix form:

```raku
say :16<FF>;   # 255
say :2<1010>;  # 10
```

You can also go the other way. Take a number and write it in another base. For this, call the `base` method. It gives a string of digits:

```raku
say 255.base(16); # FF
say 10.base(2);   # 1010
```

{% include nav.html %}
