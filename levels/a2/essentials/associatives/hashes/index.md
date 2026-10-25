---
title: Hashes
---

{% include menu.html %}

A _hash_ is one more associative data type in Raku. It is an aggregate data type. It keeps many items. Each item has a name and a value. Hash variables use a new sigil: `%`.

```raku
my %capitals;
```

Now you can use the hash. You can assign some starting values to it.

```raku
%capitals = France => 'Paris', Italy => 'Rome';
```

You can also do both things at once. This works with other data types too:

```raku
my %capitals = France => 'Paris', Italy => 'Rome';
```

## Getting the elements

To get an element, you subscript the hash. You do it in the same way as with [pairs](../pairs). Put a string in angle brackets or in curly braces:

```raku
say %capitals<France>;
say %capitals{'Italy'};
```

Hashes are mutable. This means that you can change them. You can change the values. You can also add new ones:

```raku
%capitals<Germany> = 'Berlin';
```

## Keys and values

Raku has two built-in methods for hashes, `keys` and `values`. The `keys` method returns a list of the keys. The `values` method returns a list of the values:

```raku
say %capitals.keys;
say %capitals.values;
```

The program can print this, for example:

    (Germany Italy France)
    (Berlin Rome Paris)

Note that the elements of a hash have no order. But both methods use the same order.

{% include nav.html %}
