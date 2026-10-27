---
title: Working with directories
---

{% include menu.html %}

Sometimes you need to work with the file system itself. For example, you may want to check what exists or create directories. For this, Raku uses _path objects_. You can turn any string into a path object with the `.IO` method. The path object then answers questions about that path.

Most often, you ask if a path exists and what kind of thing it is:

```raku
spurt 'greeting.txt', 'hi';

say 'greeting.txt'.IO.e; # True  — does it exist?
say 'greeting.txt'.IO.f; # True  — is it a file?
say 'greeting.txt'.IO.d; # False — is it a directory?
```

`.e` checks whether the path exists. `.f` checks for a regular file, and `.d` checks for a directory.

To create a new directory, use `mkdir`:

```raku
mkdir 'reports';
say 'reports'.IO.d; # True
```

In the next topic, you will see how to list the contents of a directory.

{% include nav.html %}
