---
title: Solution of ‘Examining the result of prompt — Numbers’
---

{% include menu.html %}

## Code

Here is the complete program. It solves the problem and prints both the entered value and its type.

```raku
my $n = prompt 'Enter a number: ';
say $n;
say $n.WHAT;
```

🦋 You can find the source code in the file [prompt-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-numbers.raku).

## Test runs

Run the program several times and enter the numbers of different types.

### Integers

First, let us try integers, both positive and negative.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 10
10
(IntStr)
```

The result has the type `IntStr`. This built-in type has the features of both `Int` and `Str`.

### Rational numbers

Now let us try a rational number. Remember that in Raku, writing a number with a decimal point gives a `Rat` number. It is not a floating-point number.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 3.14
3.14
(RatStr)
```

This time, the program says that the data in `$n` has the type `RatStr`. This is a combined type of both `Rat` and `Str`.

### Floating-point numbers

Finally, try a number in scientific notation. By now, you can probably guess the output.

```console
$ raku exercises/what/prompt-numbers.raku
Enter a number: 5e-14
5e-14
(NumStr)
```

As expected, the new value is of the `NumStr` type.

{% include nav.html %}
