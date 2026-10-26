---
title: Lists
---

{% include menu.html %}

A list is also an ordered collection of values. But it is not like an array. A list is _immutable_. You cannot change its elements. You cannot add or remove elements either. To write a list, put commas between the values. Often there are parentheses around them:

```raku
my $colours = ('red', 'green', 'blue');
```

You can read the elements of a list by their index. You can also ask how many elements there are. It is the same as with an array:

```raku
my $colours = ('red', 'green', 'blue');
say $colours[0];    # red
say $colours.elems; # 3
```

Now try to change an element. Here you see the difference. With an array, it works. Each element of an array is a container:

```raku
my @array = 1, 2, 3;
@array[0] = 10;
say @array; # [10 2 3]
```

With a list, you get an error. The elements of a list are just values. They are not containers:

```raku
my $list = (1, 2, 3);
$list[0] = 10;
```

The second program stops. It prints this message:

```
Cannot modify an immutable List ((1 2 3))
  in block <unit> at t.raku line 2
```

So, do you need to change the data? Then use an array, with the `@` sigil. Do you only need to keep some values in a fixed order? Then use a list.

{% include nav.html %}
