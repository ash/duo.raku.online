---
title: The `.Str` method
---

{% include menu.html %}

The `.Str` method returns the **plain string** form of a value. Raku calls it when it needs a value as a string. This is called *string context*. `print` and `put` call it. The `~` operator calls it too. This operator joins strings. It also works for values inside strings in double quotes.

```raku
say 42.Str;    # 42
my @a = 'alpha', 'beta', 'gamma';
say @a.Str;    # alpha beta gamma
```

Note that the array comes back **without the brackets**. Its elements are just joined with spaces. Here you can see the difference from [`.gist`](../gist). The `.gist` method keeps the brackets. Compare the two methods side by side:

```raku
my @data = 1, 2, 3;
say @data.gist; # [1 2 3]
say @data.Str;  # 1 2 3
```

A value inside a string in double quotes uses `.Str`. So an array inside a string is shown in the plain way:

```raku
my @data = 10, 20, 30;
say "data: @data[]"; # data: 10 20 30
```

{% include nav.html %}
