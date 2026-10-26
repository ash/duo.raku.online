---
title: Built-in special variables
---

{% include menu.html %}

Raku defines a set of variables for you. Most of them are _dynamic_, with the `*` twigil. So you can read them anywhere, as you saw with [dynamic variables](/advanced/special-variables/dynamic-variables). You can even override them for a scope. Here are the ones you will need most often.

## Standard streams

Input and output go through three dynamic variables: `$*OUT` for standard output, `$*ERR` for standard error, and `$*IN` for standard input. `say` and `print` write to `$*OUT`. To send text to standard error instead, call the method on `$*ERR`:

```raku
$*OUT.say('normal output'); # goes to standard output
$*ERR.say('a diagnostic');  # goes to standard error
```

Because these variables are dynamic, you can redirect `$*OUT` in a block. Then everything you call inside that block sends its output to the new place. You do not need to change any of that code.

## The program and its process

A few variables give information about the running program itself:

```raku
say $*PROGRAM-NAME; # the path of the script being run
say $*PID;          # the process id of this program
say $*CWD;          # the current working directory
```

Their values change each time you run the program. So there is no fixed output to show here.

## Command line and environment

The arguments and the environment come in two containers that are ready to use:

* `@*ARGS` — the list of command-line arguments (a `MAIN` subroutine gets the same ones)
* `%*ENV` — the environment variables, in a hash

```raku
say @*ARGS.elems; # how many arguments were passed
say %*ENV<HOME>;  # the value of the HOME environment variable
```

These built-in variables save you from collecting the same information yourself. They are also dynamic, so Raku looks them up through the call stack. So you can override any `$*` built-in for a scope. This works exactly as with a `$*` variable of your own.

Besides these dynamic variables, Raku also has the compile-time `?` built-ins: `$?FILE` and `$?LINE`. You already saw them on the [twigils](/advanced/special-variables/twigils) page.

{% include nav.html %}
