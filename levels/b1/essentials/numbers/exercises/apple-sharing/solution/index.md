---
title: Solution to ‘Apple sharing’
---

{% include menu.html %}

Here is the solution to the problem.

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

With the input numbers 3 and 11, the program prints this:

```console
$ raku exercises/numbers/apple-sharing.raku
Each person gets 3 apple(s).
There are 2 apple(s) remaining.
```

Change the starting values of `$N` and `$K` to try other situations:

* `$K` is a multiple of `$N`, for example, `12` and `3`;
* `$K` is equal to `$N`;
* `$K` is less than `$N`.

## Comments

The program uses two operators: `div` for integer division and `%` for the remainder of the division. Another way is to do the calculations like this:

```raku
my $gets = $K div $N;
my $remains = $K - $N * $gets;
```

Also note how Raku inserts the values of the variables into the string.

{% include nav.html %}
