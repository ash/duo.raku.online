---
title: The Proc object
---

{% include menu.html %}

Every call to `run` or `shell` returns a `Proc` object. It is a small record that describes which program ran and how it finished. The earlier topics used its `.out` handle to read output. But a `Proc` holds more than that.

The most useful part is the **exit code**. With a small integer, a program tells whoever started it whether it succeeded. `0` means success. Any other number is a failure code that the program chooses itself. `.exitcode` gives you that number:

```raku
my $proc = run 'sh', '-c', 'exit 3';
say $proc.exitcode; # 3
```

Usually you only ask a yes-or-no question: did it work? For this, a `Proc` is simply true when the exit code is `0`. Otherwise, it is false. So you can test it directly:

```raku
my $proc = run 'ls', '/', :out;
$proc.out.slurp(:close);
say $proc ?? 'ok' !! 'failed'; # ok
```

A `Proc` also remembers which command it started, in `.command`:

```raku
my $proc = run 'echo', 'hi', :out;
$proc.out.slurp(:close);
say $proc.command; # (echo hi)
```

There is one thing to watch out for. If a command fails and you simply **ignore** the returned `Proc`, Raku raises an exception. It does not let the failure go unnoticed:

```raku
run 'sh', '-c', 'exit 1';
# dies: The spawned command 'sh' exited unsuccessfully (exit code: 1, signal: 0)
```

A non-zero exit code usually means that something went wrong. So if you throw away a failing `Proc`, it throws an exception. This happens when it goes out of scope. What causes this is *throwing away* the result, not ignoring the exit code. Just storing the `Proc` in a variable is enough to avoid the exception. You do not even have to look at it again.

```raku
my $proc = run 'sh', '-c', 'exit 1'; # no error, even though it failed
# …and $proc is never used again
```

So if you *expect* that a command might fail, keep its `Proc`. Then look at `.exitcode`, or test it as a Boolean. Do this whenever you want to know what happened.

{% include nav.html %}
