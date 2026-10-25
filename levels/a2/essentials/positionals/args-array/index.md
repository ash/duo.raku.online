---
title: The @*ARGS array
---

{% include menu.html %}

Now you know about arrays. So let's meet a built-in array, `@*ARGS`. Look at the `*` in its name. It is a second sigil, or _twigil_. We see more twigils later. But for now, let's see how this special array is useful. It keeps the arguments of the program. The program gets them from the command line.

Look at this run of a program:

```console
$ raku run.raku alpha beta
```

The program `run.raku` gets two parameters: `alpha` and `beta`. You can read them from `@*ARGS`.

```raku
say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

This program prints the number of its arguments. Then it prints the arguments:

```console
$ raku run.raku alpha beta
2
alpha
beta
```

You can also run the program as an executable file. You do not need to change the program for this:

```console
$ ./run.raku alpha beta
```

In this case, the program [needs a shebang](/essentials/running-programs/from-command-line). But the most important thing is this. The indices of `@*ARGS` still start with `0`:

```raku
#!/usr/bin/env raku

say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

{% include nav.html %}
