---
title: 'Solution: The value of e'
---

{% include menu.html %}

## Disclaimer

Raku has a built-in constant `e`. It gives the answer to this task at once. The solution below is just for learning.

## Code

The formula in this task contains a factorial. We already have at least two ways to calculate it, and more will follow. The program below defines two functions. One calculates the factorial, and the other calculates the partial sum of the formula.

The function must also work without arguments. In that case, the loop runs a fixed number of times. So we can give the parameter a [default value](/essentials/functions/default-values): `sub e-approx($max = 100)`.

In the code, note that both functions build up their results in a similar way. They use a [postfix `for` loop](/essentials/loops/postfix-for) over a [range](/essentials/ranges).

Here is the solution:

```raku
sub factorial($n) {
    my $f = 1;
    $f *= $_ for 1..$n;

    return $f;
}

sub e-approx($max = 100) {
    my $e = 1;
    $e += 1 / factorial($_) for 1..$max;

    return $e;
}

say e-approx(10);
say e-approx();
```

🦋 Find the program in the file [the-value-of-e.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/the-value-of-e.raku).

## Output

With 10 and 100 rounds of the loop, we get these results. Also try other values of `$max`.

```console
$ raku exercises/functions/the-value-of-e.raku
2.7182818
2.718281828459045
```

{% include nav.html %}
