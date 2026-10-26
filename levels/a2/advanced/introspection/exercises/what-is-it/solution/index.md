---
title: The solution of ’What is it‘
---

{% include menu.html %}

Here is one way to solve the task.

## Code

```raku
my $a = 42;
my $b = 'x';

say $a.WHAT === Int;
say $b.WHAT === Int;
```

🦋 You can find the source code in the file [what-is-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/what-is-it.raku).

## Output

```
True
False
```

## Comments

1. `$a.WHAT` is not the string `Int`. It is the real `Int` type object. So `=== Int` compares it with the type itself. The result is `True`.

1. `$b` keeps a string. So its `WHAT` is `Str`. The comparison with `Int` gives `False`. So `WHAT` is useful in conditions. It is not only for printing.

{% include nav.html %}
