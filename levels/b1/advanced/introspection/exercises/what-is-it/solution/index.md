---
title: The solution of ’What is it‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `$a.WHAT` is not the string `Int`, but the real `Int` type object. So `=== Int` compares it with the type itself and returns `True`.

1. `$b` holds a string, so its `WHAT` is `Str`. When you compare it with `Int`, you get `False`. This is why `WHAT` is useful in conditions, and not only when you print something.

{% include nav.html %}
