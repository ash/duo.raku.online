---
title: Operations with numbers
---

{% include menu.html %}

We are sure that you already know some operations with numbers in Raku. Here are two words to remember. The symbol of an _operation_ is called an _operator_. An operation works on some objects. They are called _operands_.

## Arithmetics

**Operator** | **Operation**
`+` | Addition
`-` | Subtraction
`*` | Multiplication
`/` | Division

Raku [supports Unicode](/essentials/on-unicode) very well. So some of these operators have a second form with non-ASCII symbols:

`×` | Multiplication
`÷` | Division

Use parentheses to change the order of the operations:

```raku
say 3 * 4 + 5;   # 17
say 3 * (4 + 5); # 27
```

## Modulo

The modulo operator is `%`. It is the same in many other languages.

`%` | Modulo

It gives the remainder of the integer division of two numbers. The remainder is what is left after the division. So `10 % 3` is `1`. But note that `-10 % 3` is `2`. Here is why. Divide the first number by the second number. Round the result down. Multiply it by the second number. Then take this away from the first number. This is the result of `%`. So `$a % $b` is the same as `$a - $b * floor($a / $b)`.

## Divisibility

Raku also has a useful operator for divisibility. It checks if one number is divisible by another. This means that there is no remainder.

`%%` | Divisibility

This is an infix operator. It goes between its two operands: `10 %% 3`. Is the first operand divisible by the second one? Then the result is the Boolean value `True`. If not, the result is `False`.

## Integer operations

Some special operations give integer results. Their operators are words, not symbols.

`div` | Integer division
`mod` | Integer modulo

The `div` operator rounds the result down. So `10 div 3` is `3`. And `-10 div 3` is `-4`.

Both `div` and `mod` need integer operands. Look at the lines marked `Error` in the program below. If you remove the `#` from them, the program does not work:

```raku
say 10.3 % 3;     # OK
# say 10.3 mod 3; # Error

say 10.3 / 3.3;     # OK
# say 10.3 div 3.3; # Error
```

## Power

There are two ways to get _x_ to the power of _y_. The first way is the `**` operator:

```raku
say 3 ** 4; # 81
```

The second way is to use superscript digits. These are small digits at the top of the line. For example:

```raku
say 3⁴; # 81
```

You can also use two or more superscript digits. Then the power can be bigger than 9. For example:

```raku
say 2¹⁵; # 32768
```

A negative power also works:

```raku
say 2 ** (-2); ## 0.25
say 2⁻²; # 0.25
```

Note that the last two expressions give a `Rat` number.

## Operations with assignment

Sometimes you need to update a variable with an operation. All the operations have a short form for this. Here is an example with `+`.

The full form

```raku
$a = $a + $b;
```

is the same as:

```raku
$a += $b;
```

{% include nav.html %}
