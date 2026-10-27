---
title: Working with directories
---

{% include menu.html %}

Sometimes you need to work with the file system itself. The file system holds all the files and directories on the disk. For example, you check what exists, or you create directories. A directory is a folder. It can hold files and other directories. For this work, Raku uses _path objects_. A path shows where a file or a directory is. The `.IO` method turns any string into a path object. Then the path object answers questions about this path.

Two questions are the most common. Does the path exist? And what kind of thing is it?

```raku
spurt 'greeting.txt', 'hi';

say 'greeting.txt'.IO.e; # True  — does it exist?
say 'greeting.txt'.IO.f; # True  — is it a file?
say 'greeting.txt'.IO.d; # False — is it a directory?
```

`.e` checks if the path exists. `.f` checks if it is a regular file. `.d` checks if it is a directory.

`mkdir` creates a new directory:

```raku
mkdir 'reports';
say 'reports'.IO.d; # True
```

The next topic shows how to list what is in a directory.

{% include nav.html %}
