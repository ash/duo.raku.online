---
title: The solution of ’Output and error‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my @data = 3, 5, 7;

my $sum = 0;
for @data -> $n {
    $sum += $n;
    $*ERR.say("running total: $sum");
}

$*OUT.say($sum);
```

🦋 You can find the source code in the file [output-and-error.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/output-and-error.raku).

## Output

Both streams appear on the screen. First come the running totals, and then the final result:

```
running total: 3
running total: 8
running total: 15
15
```

If you throw away standard error, only the real output is left:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Comments

1. `$*OUT` and `$*ERR` are the handles for standard output and standard error. Each of them has its own `say` method.

1. Each round adds the next number and writes the running total to `$*ERR`. Only the final sum goes to `$*OUT`. On the screen, the progress and the result look alike. But they go through different streams. So when `2>/dev/null` sends standard error away, only the final `15` is left.

{% include nav.html %}
