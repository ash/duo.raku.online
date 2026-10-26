---
title: The solution of ’Silence a warning‘
---

{% include menu.html %}

Here is one possible solution.

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

1. Putting the undefined `$name` into the string normally causes a “use of uninitialized value” warning. With `quietly` around the expression, the warning is hidden, so only the greeting is printed.

1. Like `do`, `quietly` returns the value of its block. So the finished string is stored in `$greeting`. The missing name leaves an empty gap in it.

1. `quietly` only hides the warning, and the value is still undefined. If you want to *deal* with the missing value instead, give a default value. Use the defined-or operator `//` for this. `$name // 'friend'` gives `'friend'` when `$name` is undefined. So `"Hello, " ~ ($name // 'friend') ~ "!"` prints `Hello, friend!` with no warning at all.

{% include nav.html %}
