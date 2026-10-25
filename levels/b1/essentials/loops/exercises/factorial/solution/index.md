---
title: Solution of ‘Factorial’
---

{% include menu.html %}

The factorial of `N` is the product of all whole numbers from 1 to `N`. For example, the factorial of 4 is 1 * 2 * 3 * 4 = 24.

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

This program uses the `*=` operator, which multiplies and assigns in one step: `$x *= $y` means the same as `$x = $x * $y`.

Instead of the postfix form, you can also use a ‘full’ loop:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## More on this subject

We will come back to this task several times. Later in this part of the course, we will also solve it with recursion.

In the second part of the course, we will learn about reduction operators. They make the solution very simple. We will also create our own operator `!`, so that `$n!` gives a factorial. Finally, there is another interesting solution when we talk about the `where` clause.

{% include nav.html %}
