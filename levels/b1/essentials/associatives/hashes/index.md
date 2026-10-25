---
title: Hashes
---

{% include menu.html %}

A _hash_ is another associative data type in Raku. It is an aggregate type that links the name of each item to its value. Hash variables use a new sigil: `%`.

```raku
my %capitals;
```

Now you can use the hash and give it some starting values.

```raku
%capitals = France => 'Paris', Italy => 'Rome';
```

As with other data types, you can do both things in one step:

```raku
my %capitals = France => 'Paris', Italy => 'Rome';
```

## Accessing the elements

Subscripting works in a similar way to what we saw for [pairs](../pairs). Put a string in angle brackets or in curly braces:

```raku
say %capitals<France>;
say %capitals{'Italy'};
```

Hashes are mutable, so you can change existing values and add new ones:

```raku
%capitals<Germany> = 'Berlin';
```

## Keys and values

A hash has two built-in methods, `keys` and `values`. They return a list of its keys and a list of its values:

```raku
say %capitals.keys;
say %capitals.values;
```

Here is an example of what this program prints:

    (Germany Italy France)
    (Berlin Rome Paris)

Note that the elements of a hash are not in any order. But the methods above return the keys and the values in the same order.

{% include nav.html %}
