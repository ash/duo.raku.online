---
title: The `.gist` method
---

{% include menu.html %}

The `.gist` method returns a **human-friendly** representation of a value. This is the form that you would want to *read*. `say` and `note` print exactly this, because they call `.gist` on each argument.

```raku
say 42.gist;     # 42
say 'Raku'.gist; # Raku
```

For simple values, the gist is just the value itself. For compound data, `.gist` adds some formatting, so that the structure is easy to read:

```raku
my @a = 'alpha', 'beta', 'gamma';
say @a.gist; # [alpha beta gamma]
```

A type object is a value that stands for the type itself. Its gist is its name in parentheses. This makes it easy to notice in the output:

```raku
say Int.gist; # (Int)
```

{% include nav.html %}
