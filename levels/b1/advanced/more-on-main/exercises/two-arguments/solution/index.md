---
title: The solution of ’Add two arguments‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
sub MAIN($a, $b) {
    say $a + $b;
}
```

🦋 You can find the source code in the file [two-arguments.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/two-arguments.raku).

## Output

```console
$ raku two-arguments.raku 2 3
5
```

## Comments

1. The two positional parameters receive the two words from the command line.

1. Command-line arguments come in as strings, but the `+` operator turns them into numbers. So `2` and `3` add up to `5`.

{% include nav.html %}
