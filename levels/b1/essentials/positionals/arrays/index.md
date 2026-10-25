---
title: Arrays
---

{% include menu.html %}

Arrays are aggregate data types, which means they can keep more than one value. This makes them different from [scalar items](/essentials/scalar-variables). Array elements can be indexed (or _subscripted_). In other words, each element has a position. This is why data of this kind has the general name positionals.

For array variables, there is another sigil: `@`. The rules for the name of the variable are the same as [for scalars](/essentials/scalar-variables/identifiers/).

```raku
my @cities;
```

At this point, we have created an array called `@cities`. You can fill it with some values:

```raku
@cities = 'Paris', 'Rome', 'Berlin';
```

You can also set the values at once, when you create the array:

```raku
my @cities = 'Paris', 'Rome', 'Berlin';
```

## Indexing

To get one item of an array, add a pair of brackets after its name:

```raku
say @cities[1];
```

Note that the sigil always stays the same. Elements are counted from zero, so in our example, the element `@cities[1]` is `'Rome'`.

Arrays are mutable, which means you can change them. To change an item, simply assign a new value to it:

```raku
@cities[0] = 'Rome';
@cities[1] = 'Paris';
```

Now the statement `say @cities[1]` prints the new value, `'Paris'`.

## Size

The length of an array is the number of its elements. To get the current length, use the `elems` method:

```raku
say @cities.elems; # 3
```

If an array appears where a number is expected, you get its size:

```raku
say +@cities; # 3
```

Here, the [`+` prefix operator](/essentials/coercion/prefixes) needs a number from its argument. That is why `+@cities` gives `3`.

{% include nav.html %}
