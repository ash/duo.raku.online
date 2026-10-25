---
title: 'Solution: Echo until enough'
---

{% include menu.html %}

This program needs a loop that stops when the user enters a certain word.

## Code

You can solve the task in several similar ways, with `while`, `until` or `repeat`. Here is one of them.

```raku
my $word;
repeat {
    $word = prompt 'Your word: ';
    say $word;
} while $word ne 'enough';

say 'OK, done.';
```

🦋 Find the program in the file [echo-until-enough.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/echo-until-enough.raku).

## Output

Run the program, enter a few different words, and then stop the loop.

```console
$ raku exercises/loops/echo-until-enough.raku
Your word: this
this
Your word: is
is
Your word: my
my
Your word: word
word
Your word: enough
enough
OK, done.
```

## Comment

Note that you declare the variable `$word` _before_ the loop. This is because the `while` test is outside the loop body. If you declare the variable inside the loop, the test cannot see it.

{% include nav.html %}
