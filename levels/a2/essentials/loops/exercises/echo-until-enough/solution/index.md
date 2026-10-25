---
title: 'Solution: Echo until enough'
---

{% include menu.html %}

This program needs a loop. The loop stops when the user enters a special word.

## Code

You can solve the task with `while`, `until`, or `repeat`. These ways are very similar. Here is one of them.

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

Run the program. Enter a few different words. Then stop the loop.

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

Note that you create the variable `$word` _before_ the loop. The `while` test is not inside the body of the loop. So the test cannot see a variable from inside the loop.

{% include nav.html %}
