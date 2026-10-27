---
title: The Proc object
---

{% include menu.html %}

Every call to `run` or `shell` gives back a `Proc` object. It is a small record about the program. It tells you which program ran and how it ended. In the earlier topics, we used its `.out` handle to read output. But a `Proc` holds more than that.

The most useful part is the **exit code**. It is a small whole number. A program gives it back to the one who started it. With this number, the program says if it worked. `0` means success. Any other number means failure. The program itself chooses this failure code. `.exitcode` gives you the number:

```raku
my $proc = run 'sh', '-c', 'exit 3';
say $proc.exitcode; # 3
```

Often you only ask a yes-or-no question. Did it work? For this, a `Proc` is true when the exit code is `0`. Otherwise, it is false. So you can test the `Proc` directly:

```raku
my $proc = run 'ls', '/', :out;
$proc.out.slurp(:close);
say $proc ?? 'ok' !! 'failed'; # ok
```

A `Proc` also remembers the command that it started. You find it in `.command`:

```raku
my $proc = run 'echo', 'hi', :out;
$proc.out.slurp(:close);
say $proc.command; # (echo hi)
```

Be careful with one thing. Sometimes a command fails. What if you simply **ignore** the `Proc` that it returns? Then Raku raises an exception. An exception is an error that stops the program. Raku does not let the failure stay hidden:

```raku
run 'sh', '-c', 'exit 1';
# dies: The spawned command 'sh' exited unsuccessfully (exit code: 1, signal: 0)
```

An exit code other than `0` usually means a problem. So a failing `Proc` throws an exception if you throw it away. This happens when the `Proc` goes out of scope. Then no code can reach it any more. This is not about checking the exit code. It is about *throwing away* the result. Just put the `Proc` into a variable. This is enough to avoid the exception. You do not even have to look at the variable again.

```raku
my $proc = run 'sh', '-c', 'exit 1'; # no error, even though it failed
# …and $proc is never used again
```

So, do you *expect* that a command may fail? Then keep its `Proc`. When you want to know what happened, look at `.exitcode`. Or test the `Proc` as a Boolean.

{% include nav.html %}
