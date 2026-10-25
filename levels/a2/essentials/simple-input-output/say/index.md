---
title: Output with say
---

{% include menu.html %}

The `say` function prints values to the standard output stream, `STDOUT`. People also call it a subroutine, or just a routine. Do you run the program in a terminal? Then you see the output there. Do you use an online service? Then the output goes to a special part of the web page.

Here is an example of using `say`:

```raku
say 42;
```

This line can be a part of a bigger program. It can also be the whole program. Of course, it prints `42` to the output.

Now let’s try a string:

```raku
say 'Hello, World!';
```

Good! Now `Hello, World!` is on the screen.

The `say` routine can take more than one argument. So we can print several values at once:

```raku
say 42, 'Hello, World!';
```

But look at the output. Its parts are joined into one string: `42Hello, World!`. So it is better to add a space between them. You can already solve this problem. For example, like this:

```raku
say 42, ' ', 'Hello, World!';
```

The `say` routine prints all the arguments. Then it adds a newline character to the output.

{% include nav.html %}
