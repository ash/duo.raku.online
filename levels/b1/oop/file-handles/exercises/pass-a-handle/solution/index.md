---
title: The solution of ’Pass a handle to a function‘
---

{% include menu.html %}

Here is one possible solution.

## Code

```raku
sub log-line($fh, $message) {
    $fh.say($message);
}

my $fh = open 'log.txt', :w;
log-line($fh, 'started');
log-line($fh, 'working');
log-line($fh, 'done');
$fh.close;

print slurp 'log.txt';
```

🦋 You can find the source code in the file [pass-a-handle.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/pass-a-handle.raku).

## Output

```
started
working
done
```

## Comments

1. The handle that `open` returns is just a value kept in `$fh`. So it can be an argument of `log-line`, like any string or number. Inside the subroutine, `$fh.say` writes through that same open handle.

1. The handle stays open during all three calls. So each `log-line` adds another line to the end of the same file. Then `close` saves everything to disk, and `slurp` reads the three lines back.

1. This is what makes handles easy to combine. A function can take a handle and write to it, or read from it. It does not care which file the handle points to. The code that calls the function decides that when it opens the file.

{% include nav.html %}
