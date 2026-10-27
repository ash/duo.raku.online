---
title: Deleting files and directories
---

{% include menu.html %}

`spurt` and `mkdir` create things on the disk. Two other routines remove things from the disk.

The `unlink` routine deletes a file:

```raku
spurt 'temp.txt', 'scratch data';
say 'temp.txt'.IO.e; # True

unlink 'temp.txt';
say 'temp.txt'.IO.e; # False
```

`unlink` deletes the file with the given name. Like other file-system routines, `unlink` is also a method. You call it on a path object: `'temp.txt'.IO.unlink`.

Deleting happens at once, and it is forever. There is no trash bin. You cannot get the file back. Note one more thing. After you delete a file, check it with `.e`. This method checks if the path exists. Do not use `.f` here. The tests `.f` and `.d` check the type of the path. They throw an error when the path is not there.

The `rmdir` routine removes a directory. But the directory must be **empty**:

```raku
mkdir 'reports';
rmdir 'reports';
say 'reports'.IO.e; # False
```

If the directory is not empty, `rmdir` removes nothing. The directory stays in its place. So you delete a directory with files in two steps. First, you make it empty. Then you remove it:

```raku
mkdir 'reports';
spurt 'reports/jan.txt', 'January';
spurt 'reports/feb.txt', 'February';

.unlink for 'reports'.IO.dir;   # delete every entry
rmdir 'reports';                # now the directory is empty
say 'reports'.IO.e;             # False
```

`'reports'.IO.dir` gives a list of the entries in the directory. You saw it in the previous topic. The program calls `.unlink` on each entry. This removes them all. Now the directory is empty. So `rmdir` can remove it. This simple loop expects only files in the directory. But a directory can also have other directories in it. Then you must empty each inner directory first. You do it in the same way.

{% include nav.html %}
