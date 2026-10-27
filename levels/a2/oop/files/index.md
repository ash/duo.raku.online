---
title: Working with files
---

{% include menu.html %}

Here is the easiest way to work with a file. You read or write the whole file at once.

The `spurt` routine writes a string to a file. It creates the file. Or, if the file is already there, it replaces the old contents:

```raku
spurt 'greeting.txt', "Hello, file!\n";
```

The `slurp` routine reads the whole file. It gives you the content as a string:

```raku
my $text = slurp 'greeting.txt';
print $text; # Hello, file!
```

With `spurt` and `slurp`, you save data and load it again. You need only two short calls. Here, we use `print` and not `say`. The reason is that the text already ends with a newline.

These routines work with the whole file at once. They are good for small files. A small file fits easily into memory. For a large file, you use a [file handle](/oop/file-handles). You also use one to work with a file line by line. You learn about it at the end of this section. The next topic shows how to add to a file. The old contents of the file stay there.

{% include nav.html %}
