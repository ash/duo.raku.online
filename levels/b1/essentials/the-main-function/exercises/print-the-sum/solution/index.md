---
title: 'Solution: Print the sum'
---

{% include menu.html %}

The program has just one `MAIN` function. It takes two typed arguments. Both of them are made from the command-line arguments.

## Code

Here is the solution:

```raku
sub MAIN(Int $a, Int $b) {
    say $a + $b;
}
```

🦋 Find the program in the file [print-the-sum.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/the-main-function/print-the-sum.raku).

## Output

Try different input numbers:

```console
$ raku exercises/the-main-function/print-the-sum.raku 500 700
1200
```

You can also run the program without arguments, or with arguments of other types. See what happens then. We will talk about handling such cases in the second part of the course.

{% include nav.html %}
