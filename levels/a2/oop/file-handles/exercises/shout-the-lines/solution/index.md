---
title: The solution of ’Number the lines‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
spurt 'words.txt', "apple\nbanana\ncherry\n";

my $n = 0;
for 'words.txt'.IO.lines -> $line {
    $n++;
    say "$n: $line";
}
```

🦋 You can find the source code in the file [shout-the-lines.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/shout-the-lines.raku).

## Output

```
1: apple
2: banana
3: cherry
```

## Comments

1. `spurt` writes the three words to the file. Newlines separate the words.

1. `.IO.lines` gives the lines one by one. The lines have no newline at the end. We keep a counter `$n`. Each round of the loop adds 1 to it. So each line is printed with its place in the file.

{% include nav.html %}
