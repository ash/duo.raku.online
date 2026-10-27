---
title: The solution of ’Write with a handle‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $fh = open 'out.txt', :w;
$fh.say($_) for 1..3;
$fh.close;

print slurp 'out.txt';
```

🦋 You can find the source code in the file [write-with-a-handle.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/write-with-a-handle.raku).

## Output

```
1
2
3
```

## Comments

1. `open` with the `:w` flag gives a handle for writing. The handle stays open during the whole loop. So each `$fh.say` adds one more line. Here, a handle is better than `spurt`. `spurt` opens the file again every time.

1. `close` writes all the data to the disk. So the `slurp` after it reads back all three lines.

{% include nav.html %}
