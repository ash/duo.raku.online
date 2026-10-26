---
title: The solution of ’A command-line flag‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
sub MAIN(Bool :$shout = False) {
    say $shout ?? 'HELLO' !! 'hello';
}
```

🦋 You can find the source code in the file [boolean-flag.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/boolean-flag.raku).

## Output

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Comments

1. A named parameter of the type `Bool` becomes a flag. With `--shout`, `$shout` is `True`. Without it, `$shout` keeps the default value, `False`.

1. Then the ternary operator prints `HELLO` or `hello`. A `--name=value` option has a value. A flag has no value. Only one thing matters: is the flag there or not?

{% include nav.html %}
