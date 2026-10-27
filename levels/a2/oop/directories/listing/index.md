---
title: Listing a directory
---

{% include menu.html %}

The `dir` routine returns the entries of a directory. An entry is a file or a directory inside it. Each entry is a path object. The order of the entries is not fixed. So people often sort the result. Then the output always comes in the same order.

```raku
mkdir 'box';
spurt 'box/a.txt', '';
spurt 'box/b.txt', '';

for dir('box').sort -> $entry {
    say $entry.basename;
}
```

This program prints the names of the files in the `box` directory. The names are sorted:

```
a.txt
b.txt
```

Each entry is a full path object. The `basename` method gives only the name at the end. It does not give the directory part. You can ask a path object all the same questions as before: `.f`, `.d`, `.e`. So, for example, you can take only the files from a directory.

{% include nav.html %}
