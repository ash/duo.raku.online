---
title: The `.gist` method
---

{% include menu.html %}

The `.gist` method returns a **human-friendly** form of a value. It is the form that you want to *read*. `say` prints exactly this form. `note` prints it too. They call `.gist` on each argument.

```raku
say 42.gist;     # 42
say 'Raku'.gist; # Raku
```

For simple values, the gist is just the value. Some data has several parts. For such data, `.gist` adds a little formatting. Then you can still read the structure easily:

```raku
my @a = 'alpha', 'beta', 'gamma';
say @a.gist; # [alpha beta gamma]
```

A type object is a value. It stands for the type itself. Its gist is the name of the type in parentheses. So you can easily see it in the output:

```raku
say Int.gist; # (Int)
```

{% include nav.html %}
