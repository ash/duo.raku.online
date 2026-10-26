---
title: The solution of ’Final message‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The `END` phaser comes before the loop in the code. But it runs last, after the main code. By then, the loop has added 1 to `$count` three times.

1. The phaser keeps a link to the variable `$count`. So it reads the *final* value of the variable. It does not read the `0` from the line of the phaser. This is the usual reason to put a summary in `END`.

{% include nav.html %}
