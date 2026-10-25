---
title: 'Solution: Recursive factorial'
---

{% include menu.html %}

The factorial is a very useful exercise. You can solve it in many different ways. This time, we use recursion. This means that the function calls itself.

## Code 1

Here is the code of the solution. Note that you must check a condition. This condition stops the recursion. Without it, the recursion goes on forever.

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

In code like this, the postfix form of `if` is often better. Here, `if` comes after `return`. So the function returns at once. The code becomes cleaner. It has less indentation and punctuation.

```raku
sub factorial($n) {
    return 1 if $n < 2;
    return $n * factorial($n - 1);
}

say factorial(10);
```

🦋 Find the updated program in the file [recursive-factorial-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial-2.raku).

## Example

Run the program and check the result. Here is a fun fact. There are exactly _10!_ seconds in six weeks.

```console
$ raku exercises/functions/recursive-factorial.raku
3628800
```

{% include nav.html %}
