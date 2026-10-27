---
title: Standard streams
---

{% include menu.html %}

Every program has three _standard streams_ that connect it to its environment. They are standard output, standard error and standard input. Raku makes them available through three special variables: `$*OUT`, `$*ERR` and `$*IN`.

In fact, you have been writing to standard output from the very beginning. Both `say` and `print` send their text to `$*OUT`.

```raku
say 'Hello'; # goes to standard output
```

Error messages and other messages about problems go to a separate stream, standard error. This way, they do not get mixed with the real output of the program. The `note` routine writes there:

```raku
note 'Something looks wrong'; # goes to standard error
```

Keeping them apart is useful because you can redirect each stream separately. For example, you can save the output of a program to a file. Its error messages still appear on the screen.

You can also write to the streams directly. Both `$*OUT` and `$*ERR` are _handles_ with their own `say` and `print` methods:

```raku
$*OUT.say('a normal line');
$*ERR.say('a diagnostic line');
```

The third stream, `$*IN`, is standard input. You have already used it, but not directly: `prompt` reads a line from it. We will return to reading input in the topic about [file handles](/oop/file-handles). This is because `$*IN` is a handle, just like an open file.

{% include nav.html %}
