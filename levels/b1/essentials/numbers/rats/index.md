---
title: Rational numbers in Raku
---

{% include menu.html %}

Rational numbers are a unique feature of Raku. They have their own data type, `Rat`.

Inside, a rational number is a fraction. It has two integer parts, the numerator and the denominator. This means that numbers like 1/3 can be stored exactly.

There are several ways to write a `Rat` number in a Raku program:

```raku
my $x = 1/2;
my $y = <2/3>;
```

Note that the slash here is part of the way the number is written. It is not a division operator. So `1/2` does not mean that you divide 1 by 2. However, when you print rational numbers, they look like decimal numbers or integers:

```raku
say 1/2; # 0.5
say 3/4; # 0.75
```

Everything after the `#` symbol on a line is a comment, which the compiler ignores. In this course, we will use such comments to show what the program prints.

## Decimal form

It is important to understand this. If you write a number in decimal form, like `0.5`, Raku creates a `Rat` number. It is not an integer, and it is not a floating-point number either. In other languages, such numbers are called `float` or `double`. It is still a rational number!

Take a look at the following example:

```raku
say 0.1 + 0.2 - 0.3;
```

If a language uses floating-point arithmetic here, the result will not be 0. The website [0.30000000000000004.com](https://0.30000000000000004.com) has a full list of examples. In all of them, floating-point arithmetic does not give the expected result.

But Raku prints an exact `0`. This is because it treats `0.1`, `0.2`, and `0.3` as rational numbers. Inside, it keeps them as `1/10`, `2/10`, and `3/10`. Run it from the command line to check this:

```console
$ raku -e 'say 0.1 + 0.2 - 0.3'
0
```

## Unicode forms

You can also use Unicode characters for fractions, such as `½`, `¼` or `¾`. They are probably not always easy to type on a keyboard. But these fractions are exactly the same values as their ASCII versions. You can write those as a fraction or as a decimal number:

`½` | `1/2` | `<1/2>` | `0.5`
`¼` | `1/4` | `<1/4>` | `0.25`
`¾` | `3/4` | `<3/4>` | `0.75`

For some fractions, such as `1/3`, you have fewer choices: `⅓` or `<1/3>`. This is because the decimal form would need an infinite number of digits.

{% include nav.html %}
