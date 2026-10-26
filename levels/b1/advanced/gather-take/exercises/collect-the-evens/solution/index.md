---
title: The solution of ’Repeat each number‘
---

{% include menu.html %}

Here is one possible solution.

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

1. Nothing says that there must be only one `take` on each pass. Here, the inner `take $n for 1..$n` runs `take` a different number of times on each pass. This flexibility is exactly what makes `gather`/`take` more powerful than a simple `map`.

1. The outer loop uses a named variable, `-> $n`, on purpose. Suppose we used `$_` in the inner loop. Then the inner `for` would set `$_` to its own counter. So we would take the counter instead of the current number.

1. `gather` simply collects every value that was taken, in order. So `@result` holds `1`, then two `2`s, then three `3`s, then four `4`s.

{% include nav.html %}
