---
title: Solution of ‘Examining the result of prompt — Numbers’
---

{% include menu.html %}

## Code

Here is the full program. It solves the problem. It prints the value that you enter and its type.

```raku
my $n = prompt 'Enter a number: ';
say $n;
say $n.WHAT;
```

🦋 You can find the source code in the file [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Test runs

Run the program a few times. Enter numbers of different types.

### Integers

First, let's try integers. Try positive and negative ones.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 10
10
(IntStr)
```

The type of the result is `IntStr`. Raku has this type built in. It has the features of `Int` and of `Str`.

### Rational numbers

Now let's try a rational number. Remember: in Raku, a number with a decimal point is a `Rat`. It is not a floating-point number.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 3.14
3.14
(RatStr)
```

This time, the data in `$n` has the type `RatStr`. This is a combined type. It is both `Rat` and `Str`.

### Floating-point numbers

Last, try a number in scientific notation, with the letter `e`. Now you can probably guess the output.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 5e-14
5e-14
(NumStr)
```

Yes, the new value has the type `NumStr`.

{% include nav.html %}
