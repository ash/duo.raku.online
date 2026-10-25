---
title: Reading command line arguments
---

{% include menu.html %}

The `MAIN` function clearly marks the start of the program, which is useful. But it is also useful because its arguments get the values from the command line.

You can read command-line arguments in two ways. The first is the [`@*ARGS` array](/essentials/positionals/args-array), which we have already used. Now let us look at the second way.

Here is a program that adds up two numbers.

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

Here is how you can run the program. It prints the sum of its two arguments:

```console
$ raku t.raku 123 45
168
```

Like any other function, `MAIN` can have default values for its arguments. This is possible for some of them, or even for all of them. For example:

```raku
sub MAIN($a, $b = 100) {
    say $a + $b;
}
```

If you do not give the second argument, the program uses the default value:

```console
$ raku t.raku 15
115
```

{% include nav.html %}
