---
title: Arrays
---

{% include menu.html %}

An array is an ordered container. Each element of an array is a scalar container too.

```raku
my @array = 100, 200, 300;
my @letters = 'a', 'b', 'c';
```

The `@` sigil shows that the variable works as a `Positional` object. So you can get each element by its index:

```raku
say @array[1];   # 200
say @letters[2]; # c
```

Each element is a scalar container. So you can assign a new value to it. It works just like a normal scalar variable:

```raku
my @array = 100, 200, 300;
@array[0] = 10;
say @array; # [10 200 300]
```

You can also assign a value of another type. For example:

```raku
my @array = 100, 200, 300;
@array[0] = 'ten';
say @array; # [ten 200 300]
```

This is why arrays are _mutable_. This means that you can change them. Each place in an array is a container. It can get a new value. [Lists](/advanced/ordered-containers/lists) are different. You will see this in the next topic.

{% include nav.html %}
