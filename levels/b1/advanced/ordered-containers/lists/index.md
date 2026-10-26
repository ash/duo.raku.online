---
title: Lists
---

{% include menu.html %}

A list is also an ordered collection of values. But unlike an array, it is _immutable_. This means that you cannot change, add, or remove its elements. You write a list as values with commas between them, often inside parentheses:

```raku
my $colours = ('red', 'green', 'blue');
```

You can read the elements of a list by their index, as with an array. You can also ask how many there are:

```raku
my $colours = ('red', 'green', 'blue');
say $colours[0];    # red
say $colours.elems; # 3
```

You see the difference when you try to change an element. With an array, this works, because each element is a container:

```raku
my @array = 1, 2, 3;
@array[0] = 10;
say @array; # [10 2 3]
```

With a list, you get an error. The elements of a list are just values, not containers:

```raku
my $list = (1, 2, 3);
$list[0] = 10;
```

The second program stops with a message:

```
Cannot modify an immutable List ((1 2 3))
  in block <unit> at t.raku line 2
```

So, use an array, with the `@` sigil, when you need to change its contents. Use a list when you only need to keep a fixed sequence of values.

{% include nav.html %}
