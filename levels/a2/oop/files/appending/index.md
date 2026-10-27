---
title: Appending to a file
---

{% include menu.html %}

Normally, `spurt` replaces all the old contents of the file. But you may want to add to the end of a file. For this, pass the named argument `:append`:

```raku
spurt 'log.txt', "line1\n";
spurt 'log.txt', "line2\n", :append;

print slurp 'log.txt';
```

The second `spurt` keeps the old contents. It adds the new line after them. So in the end, the file has both lines:

```
line1
line2
```

Without `:append`, the second call writes over the file. Then the file has only `line2`. Adding to the end of a file is called appending. It is useful for log files, for example. A log file keeps a record of the work of a program. Every run of the program adds to this record. So the record grows. The program does not start again with an empty file.

{% include nav.html %}
