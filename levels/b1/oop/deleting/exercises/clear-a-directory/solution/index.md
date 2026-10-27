---
title: The solution of ’Clear a directory‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `rmdir` removes only empty directories, so the files must be deleted first. `'cache'.IO.dir` lists the entries, and `.unlink for …` deletes each one of them.

1. Now that the directory is empty, `rmdir` removes it. The final `.e` test gives `False`, which shows that `cache` is gone.

{% include nav.html %}
