---
title: Built-in special variables
---

{% include menu.html %}

Raku has a set of variables ready for you. Most of them are _dynamic_, with the twigil `*`. You already know [dynamic variables](/advanced/special-variables/dynamic-variables). So you can read these variables anywhere. You can even give them a new value for one scope. Here are the variables that you need most often.

## Standard streams

Input and output go through three dynamic variables. `$*OUT` is standard output. `$*ERR` is standard error, an output for error messages. `$*IN` is standard input. `say` and `print` write to `$*OUT`. Do you want to send text to standard error? Then call the method on `$*ERR`:

```raku
$*OUT.say('normal output'); # goes to standard output
$*ERR.say('a diagnostic');  # goes to standard error
```

These variables are dynamic. So, inside a block, you can send `$*OUT` to a new place. Then the code that you call in the block prints there. You do not change that code at all.

## The program and its process

Some variables tell you about the program that is running now:

```raku
say $*PROGRAM-NAME; # the path of the script being run
say $*PID;          # the process id of this program
say $*CWD;          # the current working directory
```

Their values are different each time you run the program. So we do not show the output here.

## Command line and environment

Raku puts the arguments and the environment into two containers. They are ready for you:

* `@*ARGS` — the list of command-line arguments; a `MAIN` subroutine gets the same arguments
* `%*ENV` — the environment variables, in a hash

```raku
say @*ARGS.elems; # how many arguments were passed
say %*ENV<HOME>;  # the value of the HOME environment variable
```

These built-in variables save you work. You do not have to get this information yourself. They are dynamic, so Raku looks them up through the call stack. So you can override any `$*` built-in variable for a scope. It works just like your own `$*` variable.

These are all dynamic variables. But Raku also has built-in variables with the twigil `?`. These are `$?FILE` and `$?LINE`. The compiler sets their values before the program runs. You already saw them on the page about [twigils](/advanced/special-variables/twigils).

{% include nav.html %}
