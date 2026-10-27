---
title: The solution of ’Build up a log‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The first `spurt` makes a new file with the line `start`.

1. Each `spurt` in the loop has `:append`. So it adds its line after the old content. It does not replace the file. A log file grows in exactly this way. Each round of the loop adds one more line at the end. Each run of a program can add a line in the same way.

1. Without `:append`, each round writes over the file. Then only the last line is left.

{% include nav.html %}
