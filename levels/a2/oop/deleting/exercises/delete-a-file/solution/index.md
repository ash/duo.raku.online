---
title: The solution of ’Delete a file‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. `spurt` creates the file. So the first `.e` test gives `True`.

1. `unlink` deletes the file. Then the second `.e` test gives `False`. The file is not there anymore. Note that we use `.e` and not `.f`. `.f` tests the type of the path. It throws an error if the path does not exist anymore. But `.e` just answers `False`.

{% include nav.html %}
