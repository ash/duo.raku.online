---
title: Integer numbers in Raku
---

{% include menu.html %}

Integers are whole numbers. In Raku, the `Int` data type is for integers. An integer can be positive or negative. You can also write a `+` sign before a number if you want. Here are a few simple examples:

```raku
42
-42
100
-5
0
```

Yes, a plain `0` is also an integer by default.

## Groups of digits

Raku has a nice feature for big numbers. You can split the digits into groups of thousands. This makes the numbers easier to read:

```raku
1_000_000
-3_141_592
```

You can also write a number like `34_56`. It is better not to do this. It can confuse other people who read your code. But you cannot put two underscores next to each other. And a number cannot start or end with an underscore.

## Integers of any length

Raku works perfectly with very big numbers. They can be bigger than the 32-bit or 64-bit limits. For example, the program below is fine. It multiplies two big integers and prints the correct result.

```raku
say 1_234_456_789_012_345_678_901 * 987_654_321_098_765_432_100;
```

{% include nav.html %}
