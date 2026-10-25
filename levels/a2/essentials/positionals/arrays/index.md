---
title: Arrays
---

{% include menu.html %}

Arrays are aggregate data types. This means that an array can keep more than one value. This makes arrays different from [scalar items](/essentials/scalar-variables). You can index, or _subscript_, the elements of an array. In other words, each element has a position. That is why we call this kind of data positionals.

Array variables have a different sigil: `@`. The rules for the name are the same as [for scalars](/essentials/scalar-variables/identifiers/).

```raku
my @cities;
```

Now we have an array. Its name is `@cities`. You can put some values into it:

```raku
@cities = 'Paris', 'Rome', 'Berlin';
```

You can also create the array with values in it:

```raku
my @cities = 'Paris', 'Rome', 'Berlin';
```

## Indexing

To get one item of an array, use a pair of brackets. Put them after the name of the variable:

```raku
say @cities[1];
```

Note that the sigil does not change. It is always `@`. Raku counts the elements from zero. So in our example, `@cities[1]` is `'Rome'`.

Arrays are mutable. This means that you can change them. To change an item, just assign a new value to it:

```raku
@cities[0] = 'Rome';
@cities[1] = 'Paris';
```

After this, the statement `say @cities[1]` prints the new value, `'Paris'`.

## Size

What is the length of an array? It is the number of its elements. To get it, use the `elems` method:

```raku
say @cities.elems; # 3
```

Sometimes you use an array where Raku needs a number. Then you get the size of the array:

```raku
say +@cities; # 3
```

Here, the [`+` prefix operator](/essentials/coercion/prefixes) needs a number from its argument. So the result of `+@cities` is `3`.

{% include nav.html %}
