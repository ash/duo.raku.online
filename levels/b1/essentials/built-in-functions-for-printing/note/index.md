---
title: The note routine
---

{% include menu.html %}

The `note` routine prints its arguments to the standard error stream. Apart from that, it works just like [`say`](../say).

1. Calls the `gist` method on its arguments.
1. Adds a newline character.
1. Converts the result to UTF-8.
1. Sends it to the `STDERR` stream.

```raku
my $x = 42;
note "Current value of \$x is $x";
```

Check that this program does not send the message to `STDOUT`:

```
$ raku t.raku > /dev/null
Current value of $x is 42
```

If you call `note` without arguments, it prints the default message, `Noted`.

{% include nav.html %}
