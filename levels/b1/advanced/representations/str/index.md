---
title: The `.Str` method
---

{% include menu.html %}

The `.Str` method returns the **plain string** form of a value. Raku calls it whenever it uses a value in *string context*. This happens in `print` and `put`, and with the `~` operator, which joins strings. It also happens when you insert a value into a string in double quotes.

```raku
say 42.Str;    # 42
my @a = 'alpha', 'beta', 'gamma';
say @a.Str;    # alpha beta gamma
```

Note that the array came back **without the brackets**. Its elements are just joined with spaces. This is the visible difference from [`.gist`](../gist), which keeps the brackets. Compare them side by side:

```raku
my @data = 1, 2, 3;
say @data.gist; # [1 2 3]
say @data.Str;  # 1 2 3
```

When you insert an array into a string, Raku uses `.Str`. So the array is shown in the plain way:

```raku
my @data = 10, 20, 30;
say "data: @data[]"; # data: 10 20 30
```

{% include nav.html %}
