---
title: 'Solution: Recursive factorial'
---

{% include menu.html %}

The factorial is a very useful exercise, because there are many ways to solve it. This time, we use recursion, which means that the function calls itself.

## Code 1

Here is the code of the solution. Note that you need to check a condition to stop the recursion. Otherwise, it will go on forever.

```raku
sub factorial($n) {
    if $n < 2 {
        return 1;
    }
    else {
        return $n * factorial($n - 1);
    }
}

say factorial(10);
```

🦋 Find the program in the file [recursive-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial.raku).

## Code 2

In code like this, the postfix form of `if` is often better. It lets you return from the function at once. This makes the code cleaner and removes a lot of indentation and punctuation.

```raku
sub factorial($n) {
    return 1 if $n < 2;
    return $n * factorial($n - 1);
}

say factorial(10);
```

🦋 Find the updated program in the file [recursive-factorial-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial-2.raku).

## Example

Run the program and check the result. By the way, did you know that six weeks have exactly _10!_ seconds?

```console
$ raku exercises/functions/recursive-factorial.raku
3628800
```

{% include nav.html %}
