---
title: The solution of ’A typed MAIN‘
---

{% include menu.html %}

Here is one possible solution.

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

1. The `Int` type means that the command-line word must look like an integer. With `5`, the value goes into `$n`, and the body prints `10`.

1. With `abc`, the value cannot become an `Int`, so the signature does not match. Raku does not run the body. Instead, it prints the generated usage message. So Raku checks the arguments for you. You do not need to write any checks yourself.

{% include nav.html %}
