---
title: Not every error is immediate
---

{% include menu.html %}

An exception is a kind of error. Normally, a thrown exception stops the program at once. You catch it with `try`. But some errors only look fatal. They do not stop your program at the moment they happen. In Raku, some failures stay quiet. Some of them react only later, when you use the result. Others let you look at them, and your program goes on. You already saw two of them in this part. It is useful to see them together in one place.

**A division by zero.** It does not fail on its own line. The program makes the bad value and keeps it quietly. The value throws an exception only when you *use* it. For example, you print it or change it into another type:

```raku
my $x = 1 / 0;    # no error here
say 'still running';
say $x;           # only now does it throw
```

The page [Soft failures](/oop/failures) explains this late reaction. It also explains the `Failure` objects behind it.

**A failing external program.** `run` and `shell` return a `Proc`. Sometimes the program fails. Its `Proc` does not throw an exception at that moment. It throws only in one case. That is when you *throw away* the `Proc` without handling it. So keep the `Proc` and read `.exitcode`. Or check if it is true or false. Then the failure stays a simple value. You can react to it. You saw this in [The Proc object](/oop/external-programs/the-proc-object).

Both cases have one thing in common. A failure can be *deferred*, or put off until later. Then it does not crash the program at once. It becomes a value. You look at this value when you are ready. `try` and the `CATCH` phaser handle errors that are thrown at once. The two ways on this page handle the other errors.

{% include nav.html %}
