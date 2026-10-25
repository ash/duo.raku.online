---
title: Rational numbers in Raku
---

{% include menu.html %}

Rational numbers are a unique feature of Raku. Their data type is `Rat`.

Inside Raku, a rational number is a fraction. It has two integer parts. The numerator is on top, and the denominator is below. So you can easily store numbers like 1/3. They stay exact.

There are a few ways to write a `Rat` number in Raku:

```raku
my $x = 1/2;
my $y = <2/3>;
```

Note that the slash here is part of how you write the number. It is not a division operator. So `1/2` does not mean ‘divide 1 by 2’. But Raku prints rational numbers as decimal numbers or integers:

```raku
say 1/2; # 0.5
say 3/4; # 0.75
```

The text after the `#` symbol is a comment. The compiler ignores it. In the course, these comments show the output of the program.

## Decimal form

This is important to know. You can write a number in decimal form, for example, `0.5`. Then Raku makes a `Rat` number. It is not an integer. But it is not a floating-point number either. Other languages call such numbers `float` or `double`. It is still a rational number!

Look at this example:

```raku
say 0.1 + 0.2 - 0.3;
```

A programming language may use floating-point arithmetic for these calculations. Then the result is not 0. The website [0.30000000000000004.com](https://0.30000000000000004.com) has a full list of such examples. In them, floating-point arithmetic does not give the result you expect.

But Raku prints exactly `0`. Why? Raku sees `0.1`, `0.2`, and `0.3` as rational numbers. Inside, it keeps them as `1/10`, `2/10`, and `3/10`. Run the code from the command line and check:

```console
$ raku -e 'say 0.1 + 0.2 - 0.3'
0
```

## Unicode forms

You can also use Unicode characters for fractions, like `½`, `¼`, or `¾`. Maybe they are not always easy to type on a keyboard. But they are exactly the same values as their ASCII versions. An ASCII version can be a fraction or a decimal number:

`½` | `1/2` | `<1/2>` | `0.5`
`¼` | `1/4` | `<1/4>` | `0.25`
`¾` | `3/4` | `<3/4>` | `0.75`

Some fractions, like `1/3`, have fewer forms: only `⅓` or `<1/3>`. A decimal form does not work for them. It needs an infinite number of digits.

{% include nav.html %}
