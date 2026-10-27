---
title: File handles
---

{% include menu.html %}

It is easy to read or write a whole file at once. But sometimes you want to go through a file line by line. Or you want to write to a file many times. The file must stay open all that time. For this, you use a _file handle_. A file handle is an object for an open file. Through it, you read from the file or write to it.

Here is the easiest way to read a file line by line. You do not even need to make a handle yourself. Call the `lines` method on a path object. It gives you the lines one by one. They are ready for a `for` loop:

```raku
spurt 'words.txt', "one\ntwo\nthree\n";

for 'words.txt'.IO.lines -> $line {
    say $line.uc;
}
```

Each `$line` is one line. There is no newline at its end. The program prints:

```
ONE
TWO
THREE
```

You can also write to a file through a handle. First, open the file with `open` and the `:w` flag. This flag means write. Then use the `say` or `print` methods of the handle. At the end, `close` it:

```raku
my $fh = open 'out.txt', :w;
$fh.say('first line');
$fh.say('second line');
$fh.close;
```

Close the handle at the end. Then all your data really goes to the disk. Some files are too large for memory. You cannot read them all at once. For such files, you usually read line by line, as above.

{% include nav.html %}
