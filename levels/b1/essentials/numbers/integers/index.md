---
title: Integer numbers in Raku
---

{% include menu.html %}

The `Int` data type is for integers, that is, whole numbers. They can be positive or negative. You can add a `+` sign if you like. Here are a few obvious examples:

```raku
42
-42
100
-5
0
```

Yes, by default, Raku treats a plain `0` as an integer.

## Groups of digits

Raku has a cute feature that helps you write big numbers. You can split the digits into groups of thousands to make them easier to read:

```raku
1_000_000
-3_141_592
```

You can make a number such as `34_56`, but it is better not to. Other people who read your code may find it confusing. But you cannot put two underscores next to each other. Also, a number cannot start or end with an underscore.

## Integers of any length

Raku has no problem with numbers beyond the 32-bit or 64-bit limits. For example, the following program is correct. It multiplies two big integers and prints the right result.

```raku
say 1_234_456_789_012_345_678_901 * 987_654_321_098_765_432_100;
```

{% include nav.html %}
