---
title: The environment
---

{% include menu.html %}

Every program starts with a set of _environment variables_. These are named values like `HOME`, `PATH`, or `USER`, which the operating system provides. In Raku, they are in the dynamic hash `%*ENV`:

```raku
say %*ENV<HOME>; # the home directory, e.g. /home/anna
```

To read an environment variable, you use its name as a key in `%*ENV`. Because `%*ENV` is an ordinary hash, you can also check whether a variable is set. You can also change it for the programs you start:

```raku
%*ENV<GREETING> = 'Hello';
say %*ENV<GREETING>; # Hello
```

When you set a key in `%*ENV`, it becomes part of the environment. Every program that you then start with `run` or `shell` gets this environment too. This is how you pass settings down to a child program:

```raku
%*ENV<GREETING> = 'Hello';

my $proc = run 'sh', '-c', 'echo $GREETING', :out;
say $proc.out.slurp(:close).chomp; # Hello
```

The variable is set in your program's environment *before* the child starts. So the shell that `run` starts already has `GREETING` in its own environment. It can print the value back with `echo`. Any variable that you set in this way reaches every program you start later.

The `*` twigil shows that `%*ENV` is a dynamic variable. So is `$*OUT`, which you saw in the part on input and output. A few other variables with a star describe the world of the running program. `@*ARGS` holds the command-line arguments, and `$*PROGRAM-NAME` is the name of the script itself. Together, they help a program understand the situation in which it was started.

{% include nav.html %}
