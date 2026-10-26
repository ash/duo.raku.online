---
title: '`gather` and `take`'
---

{% include menu.html %}

The pair `gather` and `take` is a flexible way to build a list. You put some code inside a `gather` block. Each time this code calls `take`, the value goes into the list that `gather` returns.

```raku
my @result = gather {
    take 1;
    take 2;
    take 3;
};

say @result; # [1 2 3]
```

The three `take` calls give three values, and `gather` collects them into a list. This list is stored in `@result`.

The pair is really strong when the `take` calls are spread through ordinary code. An example is a loop with a condition. Then the list has only the values that you chose to take:

```raku
my @evens = gather for 1..10 {
    take $_ if $_ %% 2;
};

say @evens; # [2 4 6 8 10]
```

Here the loop goes over the numbers from 1 to 10. But only the even ones are taken. So in the end, `@evens` holds `2, 4, 6, 8, 10`. The `%%` operator checks whether a number divides evenly.

This division of work is what makes `gather`/`take` so useful. The code around it decides _when_ to produce a value. And `gather` quietly collects whatever is taken.

{% include nav.html %}
