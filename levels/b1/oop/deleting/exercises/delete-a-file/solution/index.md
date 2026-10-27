---
title: The solution of ’Delete a file‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
spurt 'note.txt', 'temporary';
say 'note.txt'.IO.e;

unlink 'note.txt';
say 'note.txt'.IO.e;
```

🦋 You can find the source code in the file [delete-a-file.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/deleting/delete-a-file.raku).

## Output

```
True
False
```

## Comments

1. `spurt` creates the file, so the first `.e` test gives `True`.

1. `unlink` deletes the file. Then the second `.e` test gives `False`, because the file is gone. Note that we use `.e` and not `.f`. The type test `.f` would throw an error for a path that no longer exists. But `.e` simply answers `False`.

{% include nav.html %}
