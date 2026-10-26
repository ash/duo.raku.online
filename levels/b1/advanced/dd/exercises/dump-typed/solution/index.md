---
title: The solution of ’Dump a typed variable‘
---

{% include menu.html %}

Here is one possible solution to the task.

## Code

```raku
my Int $n = 42;
dd $n;
```

🦋 You can find the source code in the file [dump-typed.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-typed.raku).

## Output

```
Int $n = 42
```

## Comments

1. The variable has a declared type, so `dd` prints it before the name: `Int $n = 42`.

1. For an untyped variable, `dd` would print just `$n = 42`, with no type in front.

{% include nav.html %}
