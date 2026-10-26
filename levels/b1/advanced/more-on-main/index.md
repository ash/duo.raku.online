---
title: More on MAIN subroutines
---

{% include menu.html %}

In the Essentials part, you used `MAIN` [to get command-line arguments](/essentials/the-main-function/reading-command-line-arguments). But Raku does more for you with `MAIN` than just pass in the values.

## The usage message

Sometimes the command-line arguments do not fit the signature of `MAIN`. In that case, Raku does not run the body. Instead, it prints a _usage message_, which Raku creates automatically. The message explains how to call the program.

Take a look at this program:

```raku
sub MAIN($name) {
    say "Hello, $name!";
}
```

If you call it correctly, it greets the person:

```console
$ raku hello.raku Anna
Hello, Anna!
```

If you call it with no argument, the signature does not match. So Raku prints the usage message instead of the greeting:

```console
$ raku hello.raku
Usage:
  hello.raku <name>
```

Raku builds the message from the names of the parameters. So give them clear names, and you get useful help text for free.

## Named arguments

The parameters of `MAIN` can be named as well as positional. A named parameter becomes a command-line option like `--option=value`. If it has a default value, the option is not required:

```raku
sub MAIN(:$name = 'World') {
    say "Hello, $name!";
}
```

```console
$ raku hello.raku
Hello, World!

$ raku hello.raku --name=Raku
Hello, Raku!
```

{% include nav.html %}
