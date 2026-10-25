---
title: Solution of ‘Factorial’
---

{% include menu.html %}

To get the factorial of `N`, multiply all the numbers from 1 to `N`. For example, the factorial of 4 is 1 * 2 * 3 * 4 = 24.

## Code

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Find the program in the file [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Output

Run the program a few times. Try different values of `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Comments

The program uses the operator `*=`. It multiplies and saves the result in the variable. So `$x *= $y` is the same as `$x = $x * $y`.

You can also write a ‘full’ loop, with `for` before the block:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## More about this

This task comes back several times in the course. In this part, we also solve it in another way. We use a function that calls itself.

In the second part, you will learn about reduction operators. With them, the solution is very easy. You will also learn to make your own operator, `!`. Then you can write `$n!` for a factorial. Later, you will see one more nice solution with `where`.

{% include nav.html %}
