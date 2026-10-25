---
title: Solution of ‘Factorial’
---

{% include menu.html %}

The factorial of `N` is the product of all integers from 1 up to and including `N`. For example, the factorial of 4 is 1 * 2 * 3 * 4 = 24.

## Code

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Find the program in the file [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Output

Run the program a few times and try different values of `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Comments

This program uses the `*=` operator, a short form for multiplication with assignment: `$x *= $y` is the same as `$x = $x * $y`.

You can also use a ‘full’ loop instead of the postfix form:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## More on this subject

We will come back to this task several times. In this part of the course, we will also solve it recursively.

In the second part of the course, we will learn about the so-called reduction operators, which make the solution very simple. We will also see how to define your own operator `!`, so that you can write `$n!` to calculate a factorial. Finally, we will see another interesting solution when we talk about the `where` clause.

{% include nav.html %}
