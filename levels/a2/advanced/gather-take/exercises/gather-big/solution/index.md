---
title: The solution of ’Gather until full‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The loop gets a range of a hundred numbers. It needs far fewer. But this is fine. The loop stops by itself. When `$sum` gets bigger than `10`, `last` leaves the loop. The program never looks at the other numbers.

1. The order in the block is important. First, we add the number to `$sum`. Then we check the limit. After that, we take the number. One number makes the total bigger than `10`. Here, this number is `5`. The code does not take it. After `4`, the total is exactly `10`. So the list is `1, 2, 3, 4`.

1. With `for`, `gather`/`take` can stop early. `grep` cannot do this. `grep` always looks at the whole list. Here, we choose when to stop.

{% include nav.html %}
