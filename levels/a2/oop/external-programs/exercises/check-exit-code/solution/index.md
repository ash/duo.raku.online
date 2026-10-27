---
title: The solution of ’Check the exit code‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. `run` returns a `Proc`. We keep it in `$proc` and then read it. This is important here. A command can fail. If nobody keeps its `Proc`, Raku throws an exception. An exception is an error that stops the program. But here we look at the result. This counts as handling the failure.

1. `.exitcode` gives the number that the command returned. Here, it is `4`. You can also test the `Proc` as a Boolean. A Boolean is true or false. This answers a simpler question: did the command work? The `Proc` is true only when the exit code is `0`. Here, it is false. So the program prints `failure`.

{% include nav.html %}
