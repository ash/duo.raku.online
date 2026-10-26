---
title: The solution of ’Silence a warning‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $name;

my $greeting = quietly { "Hello, " ~ $name ~ "!" };
say $greeting;
```

🦋 You can find the source code in the file [silence-warning.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/statement-prefixes/silence-warning.raku).

## Output

```
Hello, !
```

## Comments

1. Here, the undefined `$name` goes into the string. Usually, this gives a warning: “use of uninitialized value”. But the expression is inside `quietly`. So the warning is hidden. The program prints only the greeting.

1. Like `do`, `quietly` returns the value of its block. So the program stores the new string in `$greeting`. The name is missing, so there is an empty gap in the string.

1. `quietly` only hides the warning. The value is still undefined. Maybe you want to *handle* the missing value. Then give a default value with the defined-or operator `//`. `$name // 'friend'` gives `'friend'` when `$name` is undefined. So `"Hello, " ~ ($name // 'friend') ~ "!"` prints `Hello, friend!`. There is no warning at all.

{% include nav.html %}
