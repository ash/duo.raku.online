---
title: '`gather` and `take`'
---

{% include menu.html %}

`gather` and `take` work as a pair. With them, you can build a list in many ways. You put some code in a `gather` block. Each time this code calls `take`, a value goes into a list. The `gather` block gives you this list.

```raku
my @result = gather {
    take 1;
    take 2;
    take 3;
};

say @result; # [1 2 3]
```

The three `take` calls give three values. `gather` collects them into a list. The list goes into `@result`.

The pair is most useful when the `take` calls are inside normal code. For example, they can be in a loop with a condition. Then the list has only the values that you take:

```raku
my @evens = gather for 1..10 {
    take $_ if $_ %% 2;
};

say @evens; # [2 4 6 8 10]
```

Here, the loop goes over the numbers from 1 to 10. But the code takes only the even numbers. So in the end, `@evens` has `2, 4, 6, 8, 10`. The operator `%%` checks if a number divides with nothing left over.

This split of the work makes `gather`/`take` so useful. The code around `take` decides _when_ to make a value. And `gather` quietly collects every value that you take.

{% include nav.html %}
