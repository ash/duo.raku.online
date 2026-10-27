---
title: The solution of ’Make a directory‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `mkdir` creates the directory, and `.IO.d` shows that `reports` really is a directory.

1. The directory now exists, so we can write a file into it. For this, we give a path that includes the directory name: `reports/data.txt`. Then `.e` on this path shows that the file is now in the new directory.

1. The order matters: `spurt` does **not** create missing directories for you. Try to write to `reports/data.txt` before the `reports` directory exists. This fails with an error like `Failed to open file … : No such file or directory`. The write only works because `mkdir` creates the directory first. Luckily, `mkdir` also creates any missing directories in the middle of a path. So with a nested path, as in `mkdir 'reports/2026'`, one call builds the whole chain.

{% include nav.html %}
