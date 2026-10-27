---
title: The solution of ’Does it exist?‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. `.e` checks if a path exists. The first check comes before we create the file. So it returns `False`.

1. Then `spurt` creates `test.txt`. The second check is on the *same* path. Now it returns `True`. You can ask the path object again. Its answer shows the file system as it is now.

{% include nav.html %}
