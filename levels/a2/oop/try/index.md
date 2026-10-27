---
title: Catching exceptions with `try`
---

{% include menu.html %}

Sometimes something goes wrong in a Raku program. For example, a file is missing, or the code calls `die`. Then the program throws an error. This kind of error is called an _exception_. If no code handles the exception, the program stops. This is the default. The `try` block helps here. It is a block of code with the word `try` before it. Code in this block may fail. But the program does not crash.

You put the code that may fail into a `try` block. Maybe the code throws an exception inside the block. Then the block stops at that place. But the program goes on:

```raku
my $result = try {
    die 'Boom!';
};

say "Still works";
```

The `try` catches the `die`. So the program does not crash. It goes straight on to the next statement. It prints:

```
Still works
```

Here, the block fails. Then it gives an undefined value. So `$result` is undefined:

```raku
say $result.defined; # False
```

Raku keeps the caught exception in the special variable `$!`. You can read the message of the exception from there:

```raku
say $!.message; # Boom!
```

So `try` helps with a fatal error. Without `try`, such an error stops the program. With `try`, your program can look at the error. Then it can react to it. What if the block runs without an exception? Then `$result` holds the value of the block. In this case, `$!` is undefined.

{% include nav.html %}
