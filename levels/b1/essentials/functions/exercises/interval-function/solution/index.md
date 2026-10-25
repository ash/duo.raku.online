---
title: 'Solution: Interval function'
---

{% include menu.html %}

This function uses an `if` construct with three branches. The first two branches have a Boolean test. The third branch needs no test. If the number fails the first two tests, it is the only option left.

## Code

Here is the solution:

```raku
sub f($x) {
    if    $x > 0  { return $x - 0.5 }
    elsif $x == 0 { return 0 }
    else          { return -$x }
}

say f(-2);
say f(0);
say f(3);
```

🦋 Find the program in the file [interval-function.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/interval-function.raku).

## Output

```console
$ raku exercises/functions/interval-function.raku
2
0
2.5
```

{% include nav.html %}
