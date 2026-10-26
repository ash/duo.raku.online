---
title: More on MAIN subroutines
---

{% include menu.html %}

In the Essentials part, you used `MAIN` [to get command-line arguments](/essentials/the-main-function/reading-command-line-arguments). Raku does more for you with `MAIN`. It does not only pass the values in.

## The usage message

Sometimes the command-line arguments do not match the signature of `MAIN`. The signature is its list of parameters. Then Raku does not run the body. It prints a _usage message_ instead. Raku makes this message itself. The message shows how to run the program.

Look at this program:

```raku
sub MAIN($name) {
    say "Hello, $name!";
}
```

Run it in the right way. Then it says hello to the person:

```console
$ raku hello.raku Anna
Hello, Anna!
```

Now run it with no argument. The signature does not match. So Raku prints the usage message. It does not say hello:

```console
$ raku hello.raku
Usage:
  hello.raku <name>
```

Raku makes the message from the names of the parameters. So give the parameters good names. Then the help text is useful, and you do no extra work.

## Named arguments

`MAIN` can have positional parameters. It can also have named parameters. On the command line, a named parameter becomes an option like `--option=value`. You can give it a default value. Then the option is not required:

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
