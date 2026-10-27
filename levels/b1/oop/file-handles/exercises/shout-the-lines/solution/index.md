---
title: The solution of ’Number the lines‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `spurt` writes the three words to the file, with newlines between them.

1. `.IO.lines` gives the lines one by one, without the newlines at their ends. We keep a counter `$n` and increase it on each round. So every line is printed together with its position in the file.

{% include nav.html %}
