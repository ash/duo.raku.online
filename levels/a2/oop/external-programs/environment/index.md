---
title: The environment
---

{% include menu.html %}

Every program starts with a set of _environment variables_. Each one is a value with a name. Some examples are `HOME`, `PATH`, and `USER`. The operating system gives these values to the program. In Raku, you find them in the dynamic hash `%*ENV`:

```raku
say %*ENV<HOME>; # the home directory, e.g. /home/anna
```

You read an environment variable by its name. Use the name as a key in `%*ENV`. `%*ENV` is an ordinary hash. So you can also check if a variable is set. You can even change it for the programs you start:

```raku
%*ENV<GREETING> = 'Hello';
say %*ENV<GREETING>; # Hello
```

You can set a key in `%*ENV`. Then the key becomes part of the environment. Now you start a program with `run` or `shell`. This program is a child of your program. Every child program gets the same environment. This is how you pass settings down to a child program:

```raku
%*ENV<GREETING> = 'Hello';

my $proc = run 'sh', '-c', 'echo $GREETING', :out;
say $proc.out.slurp(:close).chomp; # Hello
```

Your program sets the variable *before* it starts the child. Here, `run` starts a shell as the child. A shell is a program that reads commands and runs them. This shell already has `GREETING` in its own environment. So it can print the value back with `echo`. You can set any variable in this way. It then reaches every program you start later.

The `*` twigil tells you that `%*ENV` is a dynamic variable. A twigil is a sign after the sigil. `$*OUT` is a dynamic variable too. You met it in the part about input and output. Some other variables with a star tell you about the running program. `@*ARGS` holds the command-line arguments. These are the values after the program name in the command. `$*PROGRAM-NAME` is the name of the script itself. Together, these variables tell a program how it was started.

{% include nav.html %}
