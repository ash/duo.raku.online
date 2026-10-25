---
title: Reading command line arguments
---

{% include menu.html %}

The `MAIN` function is useful for two reasons. First, it clearly shows where the program starts. Second, it has arguments. They get their values from the command line.

There are two ways to read command-line arguments. One way is the [`@*ARGS` array](/essentials/positionals/args-array). We already used it. Now let’s look at the second way.

Look at this program. It adds two numbers.

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

Run the program like this. It prints the sum of its two arguments:

```console
$ raku t.raku 123 45
168
```

Like any other function, `MAIN` can have default values for its arguments. Some arguments can have them. Even all arguments can have them. For example:

```raku
sub MAIN($a, $b = 100) {
    say $a + $b;
}
```

Sometimes there is no second argument. Then the program uses the default value:

```console
$ raku t.raku 15
115
```

{% include nav.html %}
