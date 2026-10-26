---
title: The solution of ’Dump a typed variable‘
---

{% include menu.html %}

Here is one way to solve the task.

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

1. The variable has a declared type. So `dd` prints the type before the name: `Int $n = 42`.

1. For a variable without a type, `dd` prints only `$n = 42`. There is no type in front.

{% include nav.html %}
