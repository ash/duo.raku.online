---
title: The solution of ’Make a directory‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
mkdir 'reports';
spurt 'reports/data.txt', 'x';

say 'reports'.IO.d;
say 'reports/data.txt'.IO.e;
```

🦋 You can find the source code in the file [make-a-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/make-a-directory.raku).

## Output

```
True
True
```

## Comments

1. `mkdir` creates the directory. `.IO.d` shows that `reports` is a directory.

1. Now the directory exists. So we can write a file into it. For this, we give a path with the directory name in it: `reports/data.txt`. Then we check this path with `.e`. The check shows that the file is in the new directory.

1. The order is important. `spurt` does **not** create missing directories for you. Try to write to `reports/data.txt` before the directory `reports` exists. You get an error like `Failed to open file … : No such file or directory`. So make the directory first, as `mkdir` does here. Then the writing works. And here is a nice thing about `mkdir`. It also creates missing directories in the middle of a path. For example, `mkdir 'reports/2026'` creates the whole chain of directories in one call.

{% include nav.html %}
