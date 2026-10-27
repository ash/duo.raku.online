---
title: Listing a directory
---

{% include menu.html %}

The `dir` routine returns the entries of a directory, each one as a path object. Their order is not fixed. So people often sort the result, and then the output always has the same order.

```raku
mkdir 'box';
spurt 'box/a.txt', '';
spurt 'box/b.txt', '';

for dir('box').sort -> $entry {
    say $entry.basename;
}
```

The program prints the sorted names of the files in the `box` directory:

```
a.txt
b.txt
```

Each entry is a full path object. The `basename` method gives only the final name, without the directory part. You can ask a path object all the same questions as before: `.f`, `.d` and `.e`. So you can, for example, go through a directory and choose only the files.

{% include nav.html %}
