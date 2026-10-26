---
title: The solution of ’Gather until full‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my $sum = 0;
my @result = gather for 1..100 {
    $sum += $_;
    last if $sum > 10;
    take $_;
}

say @result;
```

🦋 You can find the source code in the file [gather-big.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/gather-big.raku).

## Output

```
[1 2 3 4]
```

## Comments

1. The loop gets a range of a hundred numbers, much more than it will use. That is fine, because the loop stops by itself. As soon as `$sum` goes over `10`, `last` leaves the loop. The rest of the numbers are never looked at.

1. The order inside the block matters. We add to `$sum` first and check the limit before we take the number. So the number that pushes the total over `10` (here, `5`) is not collected. The total reaches exactly `10` after `4`, so the list is `1, 2, 3, 4`.

1. With `for`, `gather`/`take` can leave early, but `grep` cannot. `grep` always goes through the whole list, while here we choose when to stop.

{% include nav.html %}
