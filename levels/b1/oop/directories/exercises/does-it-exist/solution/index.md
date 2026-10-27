---
title: The solution of ’Does it exist?‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
say 'test.txt'.IO.e;
spurt 'test.txt', 'x';
say 'test.txt'.IO.e;
```

🦋 You can find the source code in the file [does-it-exist.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/does-it-exist.raku).

## Output

```
False
True
```

## Comments

1. `.e` checks whether a path exists. The first check happens before we create the file, so it returns `False`.

1. Then `spurt` creates `test.txt`, and the second check on the *same* path returns `True`. Ask the path object again, and you get the current state of the file system.

{% include nav.html %}
