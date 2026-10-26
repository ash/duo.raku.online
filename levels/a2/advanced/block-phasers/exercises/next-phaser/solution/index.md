---
title: The solution of ’After each step‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $sum = 0;

for 1..3 {
    NEXT say "sum so far: $sum";
    $sum += $_;
}
```

🦋 You can find the source code in the file [next-phaser.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/next-phaser.raku).

## Output

```
sum so far: 1
sum so far: 3
sum so far: 6
```

## Comments

1. The `NEXT` phaser comes first in the code. But it runs at the *end* of each round. At that time, the body has already added the current number to `$sum`.

1. So after the first round, `$sum` is `1`. After the second round, it is `3`. After the third round, it is `6`. With `NEXT`, a loop can run code between its rounds. `FIRST` is different: it runs once at the start. `LAST` is different too: it runs once at the end.

{% include nav.html %}
