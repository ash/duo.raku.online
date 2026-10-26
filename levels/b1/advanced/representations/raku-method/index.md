---
title: The `.raku` method
---

{% include menu.html %}

The third representation method is `.raku`. It returns a string with a **code-like** representation of the value. Ideally, you could paste this string into a program and get the same value back. Every value in Raku has this method.

```raku
say 42.raku;        # 42
say 'Raku'.raku;    # "Raku"
say (1, 2, 3).raku; # (1, 2, 3)
```

Note that the string `'Raku'` comes back with quotes around it. So you can quickly see the difference between a number and a string. This is exactly the kind of detail you need when you debug.

The method also works for compound data, even for nested structures:

```raku
my @data = 1, [2, 3], 4;
say @data.raku; # [1, [2, 3], 4]
```

Since `.raku` returns a normal string, you can use it wherever a string is expected. For example, you can put it inside a string in double quotes:

```raku
my @data = 10, 20, 30;
say "The data is { @data.raku }";
# The data is [10, 20, 30]
```

Use `.raku` when you need the code-like representation as a string. Then you can combine it with your own messages. Very soon, we will introduce `dd`. This Rakudo tool prints the same kind of representation for you in one step.

{% include nav.html %}
