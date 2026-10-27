---
title: The solution of ’Clear a directory‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
mkdir 'cache';
spurt 'cache/a.tmp', '1';
spurt 'cache/b.tmp', '2';

.unlink for 'cache'.IO.dir;
rmdir 'cache';

say 'cache'.IO.e;
```

🦋 You can find the source code in the file [clear-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/clear-a-directory.raku).

## Output

```
False
```

## Comments

1. `rmdir` removes only an empty directory. So the program deletes the files first. `'cache'.IO.dir` gives a list of the entries. `.unlink for …` deletes each of them.

1. Now the directory is empty, and `rmdir` removes it. The last `.e` test gives `False`. So `cache` is really gone.

{% include nav.html %}
