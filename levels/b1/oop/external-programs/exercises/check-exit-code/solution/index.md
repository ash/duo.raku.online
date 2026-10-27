---
title: The solution of ’Check the exit code‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my $proc = run 'sh', '-c', 'exit 4';

say $proc.exitcode;
say $proc ?? 'success' !! 'failure';
```

🦋 You can find the source code in the file [check-exit-code.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/check-exit-code.raku).

## Output

```
4
failure
```

## Comments

1. `run` returns a `Proc`. Here, it is important to store it in `$proc` and then read it. If you throw away the `Proc` of a failing command, it throws an exception. But looking at the result counts as handling it.

1. `.exitcode` is the number that the command returned: `4`. Testing the `Proc` as a Boolean answers a simpler question: did it work? It is true only when the exit code is `0`. Here it is false, so the program prints `failure`.

{% include nav.html %}
