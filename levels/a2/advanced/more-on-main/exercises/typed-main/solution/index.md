---
title: The solution of ’A typed MAIN‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
sub MAIN(Int $n) {
    say $n * 2;
}
```

🦋 You can find the source code in the file [typed-main.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/typed-main.raku).

## Output

```console
$ raku typed-main.raku 5
10

$ raku typed-main.raku abc
Usage:
  typed-main.raku <n>
```

## Comments

1. The parameter has the type `Int`. So the word on the command line must look like an integer. The value `5` goes into `$n`. Then the body prints `10`.

1. The value `abc` cannot become an `Int`. So the signature does not match. Raku does not run the body. It prints the usage message instead. Raku makes this message itself. So Raku checks the arguments for you. You do not write any checks yourself.

{% include nav.html %}
