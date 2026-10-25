---
title: 'Solution: Factorial with multi-functions'
---

{% include menu.html %}

This exercise is about factorials again. In fact, this task lets us show more features of Raku.

You can calculate a factorial by starting from the given number and going down. In that case, you must stop when the number gets to 1. Multi-functions let you do this. Move the case `$n == 1` to a separate multi-function.

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

Note that the program converts the input argument to an integer: `@*ARGS[0].Int`. This prevents an infinite loop when the input number is `1`. Without the conversion, the `factorial` function gets a value of type [`IntStr`](/essentials/typed-variables/allomorphs). The first variant of the multi-function cannot catch such a call. But in the recursive call `factorial(2 - 1)`, the argument is an integer. So Raku can call the first variant.

{% include nav.html %}
