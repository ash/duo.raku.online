---
title: Solution to ‘Apple sharing’
---

{% include menu.html %}

Here is the solution.

## Code

```raku
my $N = 3;
my $K = 11;

my $gets = $K div $N;
my $remains = $K % $N;

say "Each person gets $gets apple(s).";
say "There are $remains apple(s) remaining.";
```

🦋 You can find the full code in the file [apple-sharing.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/apple-sharing.raku).

## Output

The input numbers are 3 and 11. With them, the program prints this:

```console
$ raku exercises/numbers/apple-sharing.raku
Each person gets 3 apple(s).
There are 2 apple(s) remaining.
```

Change the start values of `$N` and `$K`. Try other cases:

* `$K` divides by `$N` with no remainder, for example, `12` and `3`;
* `$K` is equal to `$N`;
* `$K` is less than `$N`.

## Comments

The program uses two operators. The `div` operator does integer division. The `%` operator gives the remainder of the division. You can also do the calculations like this:

```raku
my $gets = $K div $N;
my $remains = $K - $N * $gets;
```

Also look at the string. Raku interpolates the variables in it. This means that it puts their values into the string.

{% include nav.html %}
