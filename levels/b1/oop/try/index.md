---
title: Catching exceptions with `try`
---

{% include menu.html %}

When something goes wrong in a Raku program, an _exception_ is thrown. This happens, for example, when a file is missing or when you call `die` yourself. By default, an exception that nobody handles stops the program. The `try` block lets you run code that might fail, without a crash.

You put the risky code inside a `try` block. If an exception is thrown inside it, the block stops at that point. But the program continues:

```raku
my $result = try {
    die 'Boom!';
};

say "Still works";
```

The `try` catches the `die`, so the program does not crash. It goes straight on to the next statement and prints:

```
Still works
```

When the block fails like this, it gives an undefined value. So `$result` is undefined:

```raku
say $result.defined; # False
```

The caught exception is stored in the special variable `$!`. You can read its message from there:

```raku
say $!.message; # Boom!
```

So `try` turns a fatal error into something your program can check and react to. If the block runs without any exception, `$result` holds its value and `$!` is undefined.

{% include nav.html %}
