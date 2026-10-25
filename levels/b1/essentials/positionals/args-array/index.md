---
title: The @*ARGS array
---

{% include menu.html %}

Now that you know arrays, let us meet one of the built-in arrays: `@*ARGS`. The `*` in its name is a second sigil, or _twigil_. We will see more of them later. But for now, let us see why this special array is useful. It contains the arguments that the program gets from the command line.

Look at the following run of a program:

```console
$ raku run.raku alpha beta
```

The program `run.raku` gets two parameters, `alpha` and `beta`. In the program, you can read them from `@*ARGS`.

```raku
say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

This program prints how many arguments it got, and then the arguments themselves:

```console
$ raku run.raku alpha beta
2
alpha
beta
```

Note that the program needs no change if you run it as an executable file:

```console
$ ./run.raku alpha beta
```

In this case, the program [should have a shebang](/essentials/running-programs/from-command-line). But the most important thing is that the indices of `@*ARGS` still start with `0`:

```raku
#!/usr/bin/env raku

say @*ARGS.elems;
say @*ARGS[0];
say @*ARGS[1];
```

{% include nav.html %}
