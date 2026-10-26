---
title: The `.raku` method
---

{% include menu.html %}

The third method is `.raku`. It returns a string with a **code-like** form of the value. In the best case, you can paste this string into a program. Then you get the same value again. Every value in Raku has this method.

```raku
say 42.raku;        # 42
say 'Raku'.raku;    # "Raku"
say (1, 2, 3).raku; # (1, 2, 3)
```

Look at the string `'Raku'`. It comes back with quotes around it. So a number and a string look different. You need such details when you debug a program.

The method also works for data with many parts. This includes nested data, with one structure inside another:

```raku
my @data = 1, [2, 3], 4;
say @data.raku; # [1, [2, 3], 4]
```

`.raku` returns a normal string. So you can use it in every place that needs a string. For example, you can put it inside a string in double quotes:

```raku
my @data = 10, 20, 30;
say "The data is { @data.raku }";
# The data is [10, 20, 30]
```

Use `.raku` when you need this form as a string. Then you can add it to your own messages. Very soon, you will meet `dd`. It is a tool in Rakudo. It prints the same kind of form for you, in one step.

{% include nav.html %}
