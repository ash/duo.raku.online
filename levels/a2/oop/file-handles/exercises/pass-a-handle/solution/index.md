---
title: The solution of ’Pass a handle to a function‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. `open` returns a handle. This handle is just a value in `$fh`. So you can pass it to `log-line` as an argument. You do the same with a string or a number. Inside the subroutine, `$fh.say` writes through this same open handle.

1. The handle stays open during all three calls. So each `log-line` adds a line to the end of the same file. Then `close` writes everything to the disk. `slurp` reads the three lines back.

1. This makes handles easy to combine with functions. A function can take a handle. It can write to it or read from it. It does not care which file the handle is for. The code that calls the function chooses the file. It does this when it opens the file.

{% include nav.html %}
