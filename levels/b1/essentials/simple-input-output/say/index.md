---
title: Output with say
---

{% include menu.html %}

The `say` function prints values to the standard output stream, `STDOUT`. It is also called a subroutine, or just a routine. If you run the program from a terminal, the output appears there. With online services, it goes to a special area of the web page.

Here is an example of using `say`:

```raku
say 42;
```

This line can be part of a bigger program or the whole program. Of course, it prints `42` to the output.

Let us work with strings now:

```raku
say 'Hello, World!';
```

And there it is: `Hello, World!` on the screen.

`say` can take several arguments, so we can print more values at once:

```raku
say 42, 'Hello, World!';
```

Just note that the parts are joined into one string: `42Hello, World!`. So it is better to add a space between them. You should be able to solve this problem by now. For example, like this:

```raku
say 42, ' ', 'Hello, World!';
```

After all the arguments, `say` adds a newline character to the output.

{% include nav.html %}
