---
title: Machine-level types
---

{% include menu.html %}

The native types have names in lower case: `int`, `num`, and `str`. You declare a variable with them just like with `Int` or `Str`:

```raku
my int $i = 42;
my num $n = 3.14e0;
say $i; # 42
say $n; # 3.14
```

A native value matches a machine register or word directly. These are small places for data inside the computer. A normal Raku value has a wrapper object around it. A native value has no wrapper. So native types are faster and take less memory. This is important in big arrays. It is also important in short loops that calculate a lot.

There is one thing to know right away. A native variable is never undefined. An ordinary `Int` variable starts as undefined. `say` shows it as `(Int)`. But a native `int` starts at **zero**:

```raku
say (my Int $a); # (Int)
say (my int $b); # 0
```

The same is true for native arrays. To declare one, write the native type before the `@` variable:

```raku
my int @numbers = 10, 20, 30;
say @numbers.sum; # 60
```

Such an array keeps its elements as simple machine integers. They are not full `Int` objects. So the array uses less memory. You can ask a native value about its type. Then Raku automatically puts it into the matching full type. We say that the value is _boxed_. This is why `(my int $b).WHAT` shows `(Int)`.

{% include nav.html %}
