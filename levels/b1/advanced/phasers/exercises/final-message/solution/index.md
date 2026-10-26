---
title: The solution of ’Final message‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
my $count = 0;

END say "processed $count items";

$count++ for 1..3;
```

🦋 You can find the source code in the file [final-message.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/final-message.raku).

## Output

```
processed 3 items
```

## Comments

1. The `END` phaser is written before the loop, but it runs last. It runs when the main code has finished. By that time, `$count` has been increased three times.

1. The phaser closes over `$count`, which means that it keeps a link to the variable. So it reads the *final* value. It does not read the `0` from the line where the phaser appears. This is the usual reason to put a summary in `END`.

{% include nav.html %}
