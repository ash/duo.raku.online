---
title: Standard streams
---

{% include menu.html %}

Every program has three _standard streams_. A stream carries text into a program or out of it. The three streams connect the program with the outside world. They are standard output, standard error, and standard input. Raku gives you three special variables for them: `$*OUT`, `$*ERR`, and `$*IN`.

Standard output is for the normal output of a program. You already use it all the time. `say` and `print` send their text to `$*OUT`.

```raku
say 'Hello'; # goes to standard output
```

Error messages and other messages about problems go to standard error. This is a separate stream. So these messages do not mix with the program's real output. The `note` routine writes to standard error:

```raku
note 'Something looks wrong'; # goes to standard error
```

This is useful. You can send each of the two streams to a different place. This is called redirecting. For example, you can save the output in a file. But you still see the error messages on the screen.

You can also write to the streams directly. Each of `$*OUT` and `$*ERR` is a _handle_. With a handle, a program can write or read data. Each handle has its own `say` and `print` methods:

```raku
$*OUT.say('a normal line');
$*ERR.say('a diagnostic line');
```

The third stream, `$*IN`, is standard input. It brings text into the program, for example from the keyboard. You already used it, but not directly. The `prompt` function reads a line from it. We come back to reading input on the page about [file handles](/oop/file-handles). This is because `$*IN` is a handle, just like an open file.

{% include nav.html %}
