---
title: 'Solution: Factorial with multi-functions'
---

{% include menu.html %}

This exercise is about factorials again. With this task, we can show more features of Raku.

To find a factorial, we can start at the given number. Then we go down. We must stop when the number is 1. Multi-functions can do this. Put the case `$n == 1` into its own multi-function.

## Code

Here is the solution:

```raku
multi sub factorial(1)  { 1 }
multi sub factorial($n) { $n * factorial($n - 1) }

say factorial(@*ARGS[0].Int);
```

🦋 Find the program in the file [factorial-with-multi-functions.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/more-on-functions/factorial-with-multi-functions.raku).

## Output

```console
$ raku exercises/more-on-functions/factorial-with-multi-functions.raku 5
120
```

## Comment

Note that the program makes the input argument an integer. It does this with `@*ARGS[0].Int`. Without it, the input `1` gives an infinite loop. Here is why. The function `factorial` then gets an [`IntStr`](/essentials/typed-variables/allomorphs) value. So Raku cannot use the first variant of the multi-function. The recursive call `factorial(2 - 1)` is different. There, the argument is an integer. So Raku can call the first variant.

{% include nav.html %}
