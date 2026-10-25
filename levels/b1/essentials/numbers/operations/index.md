---
title: Operations with numbers
---

{% include menu.html %}

You surely know some of the operations with numbers in Raku already. Let us just mention that the symbol of an _operation_ is called an _operator_. The objects that an operation works on are called _operands_.

## Arithmetics

**Operator** | **Operation**
`+` | Addition
`-` | Subtraction
`*` | Multiplication
`/` | Division

Because Raku [supports Unicode](/essentials/on-unicode) really well, some of these operators also have non-ASCII versions:

`×` | Multiplication
`÷` | Division

To change the order in which the operations are done, use parentheses:

```raku
say 3 * 4 + 5;   # 17
say 3 * (4 + 5); # 27
```

## Modulo

As in many other languages, the modulo operator is `%`.

`%` | Modulo

It returns the remainder of the integer division of two numbers, so `10 % 3` is `1`. Note that `-10 % 3` is `2` because of the way the operation is defined. The result of the division is rounded down and multiplied by the second number. Then this value is subtracted from the first number. So `$a % $b` means the same as `$a - $b * floor($a / $b)`.

## Divisibility

Raku adds one more useful operator. It tests if one number is divisible by another.

`%%` | Divisibility

This is an infix operator: it goes between its two operands, as in `10 %% 3`. If the first operand is divisible by the second, you get a Boolean `True`. Otherwise, you get `False`.

## Integer operations

Some special operations return integers as results. Their operators are words rather than symbols.

`div` | Integer division
`mod` | Integer modulo

The `div` operator rounds the result down. So `10 div 3` is `3`, and `-10 div 3` is `-4`.

Both `div` and `mod` expect integer operands. So the program below will not work if you uncomment the lines marked `Error`:

```raku
say 10.3 % 3;     # OK
# say 10.3 mod 3; # Error

say 10.3 / 3.3;     # OK
# say 10.3 div 3.3; # Error
```

## Power

You can get _x_ to the power of _y_ in two ways. First, you can use the `**` operator:

```raku
say 3 ** 4; # 81
```

Second, you can use superscript digits, that is, small raised digits. For example:

```raku
say 3⁴; # 81
```

You can use more than one superscript digit to get a power bigger than 9. For example:

```raku
say 2¹⁵; # 32768
```

Negative powers are not a problem either:

```raku
say 2 ** (-2); ## 0.25
say 2⁻²; # 0.25
```

Note that in the last two expressions, the result is a `Rat` number.

## Operations with assignment

When you need to update a variable, all the operations have a short form. Let us show it with the example of `+`.

The full form

```raku
$a = $a + $b;
```

means the same as:

```raku
$a += $b;
```

{% include nav.html %}
