---
title: The solution of ’Note a warning‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `note` sends the warning to standard error, but only if the value is really negative. `say` sends the real result, the absolute value `3`, to standard output.

1. The warning stays on standard error. So it does not get mixed into the real output of the program. If you throw away standard error with `2>/dev/null`, only the `3` is left.

{% include nav.html %}
