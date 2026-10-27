---
title: Not every error is immediate
---

{% include menu.html %}

By default, a thrown exception stops the program at once. You catch it with `try`. But not every error that looks fatal really stops your program right away. Raku has failures that stay quiet. Some of them react only when you use the result. Others let you check them and carry on. You have already seen two of them in this part. It is worth collecting them in one place.

**A division by zero.** Dividing by zero does not fail where it is written. The bad value is made and kept quietly. It throws only when you *use* it. For example, this happens when you print it or convert it to another type:

```raku
my $x = 1 / 0;    # no error here
say 'still running';
say $x;           # only now does it throw
```

This delayed behaviour and the `Failure` objects behind it are the topic of [Soft failures](/oop/failures).

**A failing external program.** Suppose `run` or `shell` returns a `Proc` for a failed program. This `Proc` does not throw when it is created. It throws only if you *throw it away* without handling it. Store it and read `.exitcode`, or test it as a Boolean. Then the failure stays a simple value that you can react to. You saw this in [The Proc object](/oop/external-programs/the-proc-object).

Both cases have one thing in common. A failure can be *deferred*, that is, put off until later. It becomes a value that you check when you are ready. It does not crash the program right away. `try` and the `CATCH` phaser deal with errors that are thrown right away. The ways on this page deal with errors that are not thrown at once.

{% include nav.html %}
