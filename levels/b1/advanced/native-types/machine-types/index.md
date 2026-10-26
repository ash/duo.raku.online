---
title: Machine-level types
---

{% include menu.html %}

The names of the native types are in lower case: `int`, `num` and `str`. You use them to declare a variable, just like `Int` or `Str`:

```raku
my int $i = 42;
my num $n = 3.14e0;
say $i; # 42
say $n; # 3.14
```

A native value matches a machine register or word directly. It has no wrapper object, which a normal Raku value always has. This makes native types faster and smaller in memory. That matters in short loops that do a lot of calculations, and in large arrays.

You should know one thing right away: a native variable can never be undefined. An ordinary `Int` variable starts as the undefined `(Int)`. A native `int`, however, starts at **zero**:

```raku
say (my Int $a); # (Int)
say (my int $b); # 0
```

The same is true for native arrays. You declare them by putting the native type before the `@` variable:

```raku
my int @numbers = 10, 20, 30;
say @numbers.sum; # 60
```

Such an array stores its elements as raw machine integers, not as boxed `Int` objects. So it uses less memory. When you ask a native value about itself, Raku automatically _boxes_ it. It puts the value into the matching full type. That is why `(my int $b).WHAT` shows `(Int)`.

{% include nav.html %}
