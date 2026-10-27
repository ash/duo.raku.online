---
title: The solution of ’Output and error‘
---

{% include menu.html %}

Here is one way to solve the task.

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

You see both streams on the screen. First come the running totals, then the final result:

```
running total: 3
running total: 8
running total: 15
15
```

Here, we throw away standard error. Only the real output is left:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Comments

1. `$*OUT` is the handle for standard output. `$*ERR` is the handle for standard error. Each of them has its own `say` method.

1. Each round of the loop adds the next number. Then it writes the running total to `$*ERR`. Only the final sum goes to `$*OUT`. On the screen, the progress and the result look the same. But they go through different streams. `2>/dev/null` sends standard error away. So only the final `15` is left.

{% include nav.html %}
