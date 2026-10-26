---
title: Arrays
---

{% include menu.html %}

An array is an ordered container, and its elements are scalar containers too.

```raku
my @array = 100, 200, 300;
my @letters = 'a', 'b', 'c';
```

The `@` sigil means that such a variable behaves like a `Positional` object. This lets you use subscripts to read single elements:

```raku
say @array[1];   # 200
say @letters[2]; # c
```

Each element is a scalar container, so you can assign a new value to it. You do it in the same way as with a separate scalar variable:

```raku
my @array = 100, 200, 300;
@array[0] = 10;
say @array; # [10 200 300]
```

You can also assign a value of another type, for example:

```raku
my @array = 100, 200, 300;
@array[0] = 'ten';
say @array; # [ten 200 300]
```

This is what makes arrays _mutable_, that is, changeable. Each slot is a container that can get a new value. In the next topic, you will see that [lists](/advanced/ordered-containers/lists) behave differently.

{% include nav.html %}
