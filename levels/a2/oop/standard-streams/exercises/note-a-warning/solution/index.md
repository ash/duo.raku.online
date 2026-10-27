---
title: The solution of ’Note a warning‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $value = -3;

note 'Warning: the value is negative' if $value < 0;
say $value.abs;
```

🦋 You can find the source code in the file [note-a-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/standard-streams/note-a-warning.raku).

## Output

```
Warning: the value is negative
3
```

## Comments

1. `note` sends the warning to standard error. It does this only when the value is really negative. `say` sends the real result to standard output. The result is the absolute value, `3`.

1. The warning goes to standard error. So it does not get into the real output of the program. `2>/dev/null` throws away standard error. Then only the `3` is left.

{% include nav.html %}
