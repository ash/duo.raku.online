---
title: The solution of ’File or directory?‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `.f` checks whether the path is a regular file, so it returns `True` for `a.txt`.

1. `.d` checks for a directory. For the very same path, it returns `False`. This is because `a.txt` is a file, not a directory. The two tests complete each other. This is how you tell a file and a directory apart.

{% include nav.html %}
