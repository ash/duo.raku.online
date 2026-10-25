---
title: Pairs
---

{% include menu.html %}

A pair is a data structure. It keeps a name and a value. Together, they make one whole object. You can keep this object in a scalar variable. Here is how you create a pair:

```raku
my $pair = name => 'Anna';
```

The variable `$pair` has the type `Pair`:

```raku
say $pair.WHAT; # (Pair)
```

You can get the name and the value on their own. The `key` method gives the name. The `value` method gives the value:

```raku
say $pair.key; # name
say $pair.value; # Anna
```

Pairs have an important feature. They are immutable. This means that you cannot give a pair a new value. You also cannot give it a new name. Of course, you can assign a completely new pair to the same variable:

```raku
my $pair = name => 'Anna';
$pair = name => 'John';
say $pair.value; # John
```

## Subscripting

There is one more way to read the value of a pair. You can subscript the pair. Put the name of its key in angle brackets. Here is how:

```raku
say $pair<name>;
```

Note that a key without spaces does not need quotes. If the key has spaces, the rules are a bit stricter:

```raku
my $pair = 'employee name' => 'Julie Madelon';
say $pair{'employee name'};
```

Note that this time, the code uses curly braces.

{% include nav.html %}
