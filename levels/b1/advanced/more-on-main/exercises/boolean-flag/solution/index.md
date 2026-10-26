---
title: The solution of ’A command-line flag‘
---

{% include menu.html %}

Here is one possible solution.

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

1. A named `Bool` parameter becomes a flag. Passing `--shout` sets `$shout` to `True`. If you leave it out, it keeps the default value `False`.

1. The ternary operator then prints `HELLO` or `hello`, depending on the flag. A `--name=value` option has a value, but a flag does not. All that counts is whether the flag is there.

{% include nav.html %}
