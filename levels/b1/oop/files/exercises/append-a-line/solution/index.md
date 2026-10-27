---
title: The solution of ’Build up a log‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
spurt 'log.txt', "start\n";

for 1..3 -> $i {
    spurt 'log.txt', "entry $i\n", :append;
}

print slurp 'log.txt';
```

🦋 You can find the source code in the file [append-a-line.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/append-a-line.raku).

## Output

```
start
entry 1
entry 2
entry 3
```

## Comments

1. The first `spurt` creates a fresh file that contains the line `start`.

1. Each `spurt` inside the loop uses `:append`. So it adds its line after the existing content and does not replace the file. This is exactly how a log file grows. Each round of the loop adds one more line to the end. So does each run of a program.

1. Without `:append`, each round would write over the file. Only the last line would be left.

{% include nav.html %}
