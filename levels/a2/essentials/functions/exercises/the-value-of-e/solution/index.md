---
title: 'Solution: The value of e'
---

{% include menu.html %}

## Disclaimer

Raku already has a constant `e`. It gives the answer to this task at once. The solution below is only for learning.

## Code

The formula has a factorial in it. We already know at least two ways to find a factorial. More ways come later. The program below has two functions. One function finds the factorial. The other one adds up the first items of the formula.

The function must also work with no arguments. Then the loop runs a fixed number of times. So we give the parameter a [default value](/essentials/functions/default-values): `sub e-approx($max = 100)`.

Look at the code. Both functions build their result in a similar way. Each one has [`for` at the end of a line](/essentials/loops/postfix-for). This loop goes over a [range](/essentials/ranges).

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

Here are the results for 10 and 100 rounds of the loop. Also try other values of `$max`.

```console
$ raku exercises/functions/the-value-of-e.raku
2.7182818
2.718281828459045
```

{% include nav.html %}
