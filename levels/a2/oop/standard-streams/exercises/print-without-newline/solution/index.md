---
title: The solution of ’Print without a newline‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
$*OUT.print('a');
$*OUT.print('b');
$*OUT.say('c');
```

🦋 You can find the source code in the file [print-without-newline.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/print-without-newline.raku).

## Output

```
abc
```

## Comments

1. `$*OUT.print` writes its text but adds no newline. So `a` and `b` stay on the same line.

1. `$*OUT.say` writes `c` and then a newline. This ends the line `abc`.

{% include nav.html %}
