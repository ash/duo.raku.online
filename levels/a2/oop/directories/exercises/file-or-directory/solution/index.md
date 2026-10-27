---
title: The solution of ’File or directory?‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
spurt 'a.txt', 'x';

say 'a.txt'.IO.f;
say 'a.txt'.IO.d;
```

🦋 You can find the source code in the file [file-or-directory.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/directories/file-or-directory.raku).

## Output

```
True
False
```

## Comments

1. `.f` checks for a regular file. So it returns `True` for `a.txt`.

1. `.d` checks for a directory. We ask it about the very same path. It returns `False`. `a.txt` is a file, not a directory. The two tests work as a pair. They show if a path is a file or a directory.

{% include nav.html %}
