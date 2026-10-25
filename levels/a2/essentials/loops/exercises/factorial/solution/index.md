---
title: Solution of ‘Factorial’
---

{% include menu.html %}

The factorial of `N` is all whole numbers from 1 to `N` multiplied together. For example, the factorial of 4 is 1 * 2 * 3 * 4 = 24.

## Code

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Find the program in the file [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Output

Run the program a few times with different values of `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Comments

This program uses the `*=` operator. It is a short way to multiply and assign: `$x *= $y` means the same as `$x = $x * $y`.

You can also use a ‘full’ loop instead of the postfix form:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## More about this

We come back to this task several times in the course. In this part of the course, we also solve it with recursion.

In the second part of the course, you will learn about reduction operators. With them, the solution is very easy. You will also learn to make your own operator `!`. Then you can write `$n!` to get a factorial. Later, we will see one more interesting solution with the `where` clause.

{% include nav.html %}
