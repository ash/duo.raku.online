---
title: The solution of ’Pass a variable to a child‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $file = 'notes.txt';
spurt $file, "one\ntwo\nthree\n";

%*ENV<NOTES> = $file;

my $proc = shell 'wc -l < "$NOTES"', :out;
say $proc.out.slurp(:close).trim;

unlink $file;
```

🦋 You can find the source code in the file [read-env.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/read-env.raku).

## Output

```
3
```

## Comments

1. `spurt` creates `notes.txt` with three lines. Then we set `%*ENV<NOTES>` to the name of the file. So the file name is now in the environment. Every child program gets this environment.

1. The `shell` command gets this environment. It replaces `$NOTES` with `notes.txt`. Then it sends the file into `wc -l`. `wc -l` counts the lines of the file. The redirection `< "$NOTES"` is important. Because of it, the output is only the number `3`. We capture this number with `:out` and trim it.

1. At the end, we clean up in Raku with `unlink`. We do not need a shell for this. Deleting a file is a simple file-system operation. So there is no reason to start another process for it. A process is a running program.

{% include nav.html %}
