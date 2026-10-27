---
title: Deleting files and directories
---

{% include menu.html %}

`spurt` and `mkdir` create things on disk, and two other routines remove them.

The `unlink` routine deletes a file:

```raku
spurt 'temp.txt', 'scratch data';
say 'temp.txt'.IO.e; # True

unlink 'temp.txt';
say 'temp.txt'.IO.e; # False
```

`unlink` deletes the file with the given name. Like the other file-system routines, it also has a method form. You call it on a path object: `'temp.txt'.IO.unlink`.

Deleting happens at once and is permanent. There is no trash bin to get the file back from. Note one more thing about a deleted file. You must check for it with `.e` (existence), not with `.f`. The type tests `.f` and `.d` throw an error if the path is not there.

The `rmdir` routine removes a directory, but only an **empty** one:

```raku
mkdir 'reports';
rmdir 'reports';
say 'reports'.IO.e; # False
```

If the directory still has something in it, `rmdir` removes nothing. The directory stays where it is. So to delete a directory with files, first empty it, and then remove it:

```raku
mkdir 'reports';
spurt 'reports/jan.txt', 'January';
spurt 'reports/feb.txt', 'February';

.unlink for 'reports'.IO.dir;   # delete every entry
rmdir 'reports';                # now the directory is empty
say 'reports'.IO.e;             # False
```

`'reports'.IO.dir` lists the entries of the directory, as you saw in the previous topic. Calling `.unlink` on each entry removes it. When the directory is empty, `rmdir` can remove it. Note that this simple loop expects the directory to hold only files. A tree of nested sub-directories would need recursion to empty them first.

{% include nav.html %}
