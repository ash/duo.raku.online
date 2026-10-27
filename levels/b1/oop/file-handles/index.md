---
title: File handles
---

{% include menu.html %}

Reading or writing a whole file at once is easy. But sometimes you want to go through a file one line at a time. Or you may want to keep a file open and write to it many times. For that, you use a _file handle_.

Here is the simplest way to read a file line by line. You do not even need to create a handle for it. The `lines` method of a path object gives you the lines one at a time. They are ready for a `for` loop:

```raku
spurt 'words.txt', "one\ntwo\nthree\n";

for 'words.txt'.IO.lines -> $line {
    say $line.uc;
}
```

Each `$line` is one line without the newline at its end. The program prints:

```
ONE
TWO
THREE
```

To write through a handle, open the file with `open` and the `:w` (write) flag. Then use the `say` or `print` methods of the handle. When you are done, `close` it:

```raku
my $fh = open 'out.txt', :w;
$fh.say('first line');
$fh.say('second line');
$fh.close;
```

Closing the handle makes sure that everything you wrote really gets saved to disk. Some files are too large to load into memory all at once. For them, you usually read line by line, as above.

{% include nav.html %}
