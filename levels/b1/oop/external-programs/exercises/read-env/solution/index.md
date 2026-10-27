---
title: The solution of ’Pass a variable to a child‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `spurt` creates `notes.txt` with three lines. Then we set `%*ENV<NOTES>` to its name. This puts the file name into the environment, which every child program gets.

1. The `shell` command gets that environment and replaces `$NOTES` with `notes.txt`. Then it sends the file into `wc -l`, which counts its lines. Because of the `< "$NOTES"` redirection, the output is just the number `3`. We capture it with `:out` and trim it.

1. Finally, the clean-up happens back in Raku with `unlink`, and no shell is needed. Deleting a file is a simple file-system operation. There is no reason to start another process for it.

{% include nav.html %}
