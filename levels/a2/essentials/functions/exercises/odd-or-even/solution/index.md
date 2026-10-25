---
title: 'Solution: Odd or even'
---

{% include menu.html %}

The body of the function is very small. So you can leave out the routine `return`. You can also leave out the semicolon at the end of the line.

## Code

Here is the solution:

```raku
sub f($n) {
    $n %% 2 ?? 'Even' !! 'Odd'
}

say f(10);
say f(5);
say f(0);
say f(3);
```

🦋 Find the program in the file [odd-or-even.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/odd-or-even.raku).

## Output

```console
$ raku exercises/functions/odd-or-even.raku
Even
Odd
Even
Odd
```

{% include nav.html %}
