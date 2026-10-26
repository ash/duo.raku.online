---
title: The solution of ’Enter a block‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
for 1..2 {
    ENTER say '--entering';
    say "body $_";
}
```

🦋 You can find the source code in the file [enter-a-block.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/enter-a-block.raku).

## Output

```
--entering
body 1
--entering
body 2
```

## Comments

1. `ENTER` runs each time the program goes into the block. It runs just before the body. The loop goes into its body once in each round. So the program prints `--entering` before each `body` line.

1. This is the difference between `ENTER` and `FIRST`. With `FIRST`, the code runs only once for the whole loop. `ENTER` runs each time the program goes into the block.

{% include nav.html %}
