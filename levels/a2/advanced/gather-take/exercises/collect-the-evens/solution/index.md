---
title: The solution of ’Repeat each number‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my @result = gather for 1..4 -> $n {
    take $n for 1..$n;
};

say @result;
```

🦋 You can find the source code in the file [collect-the-evens.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/collect-the-evens.raku).

## Output

```
[1 2 2 3 3 3 4 4 4 4]
```

## Comments

1. You do not need exactly one `take` in each round. Look at the inner `take $n for 1..$n` here. It runs `take` a different number of times in each round. This freedom makes `gather`/`take` stronger than a simple `map`.

1. The outer loop has a variable with a name, `-> $n`. This is on purpose. Imagine that we use `$_` in the inner loop. Then the inner `for` puts its own counter into `$_`. So we take the counter, not the current number.

1. `gather` just collects every value that the code takes, in order. So `@result` has one `1`, two `2`s, three `3`s and four `4`s.

{% include nav.html %}
