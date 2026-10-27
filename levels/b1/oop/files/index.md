---
title: Working with files
---

{% include menu.html %}

In the simplest case, you read or write a whole file at once.

The `spurt` routine writes a string to a file. It creates the file, or replaces its contents if the file already exists:

```raku
spurt 'greeting.txt', "Hello, file!\n";
```

The `slurp` routine reads the whole file back into a string:

```raku
my $text = slurp 'greeting.txt';
print $text; # Hello, file!
```

Together, `spurt` and `slurp` save data and load it again in just two short calls. We use `print` here instead of `say`, because the text already ends with a newline.

These routines work with the whole file at once. They are best for files that are small enough to fit easily into memory. For larger files, you use a [file handle](/oop/file-handles). You also need one to work with a file line by line. We cover file handles at the end of this section. The next topic shows how to add to a file instead of replacing it.

{% include nav.html %}
