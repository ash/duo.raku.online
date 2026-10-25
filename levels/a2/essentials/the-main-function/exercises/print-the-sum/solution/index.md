---
title: 'Solution: Print the sum'
---

{% include menu.html %}

The program has only one function, `MAIN`. It takes two arguments with types. Both arguments get their values from the command line.

## Code

Here is the solution:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Find the program in the file [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Output

Try different numbers:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

You can also run the program with no arguments. Or you can use arguments of other types. See what happens. The second part of the course shows how to handle such cases.

{% include nav.html %}
