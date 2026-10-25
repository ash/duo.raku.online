---
title: Pairs
---

{% include menu.html %}

A pair is a data structure that keeps a name and a value together. They make one single object, which you can store in a scalar variable. This is how you create a pair:

```raku
my $pair = name => 'Anna';
```

The type of the variable `$pair` is `Pair`:

```raku
say $pair.WHAT; # (Pair)
```

You can get the name and the value separately with the methods `key` and `value`:

```raku
say $pair.key; # name
say $pair.value; # Anna
```

An important feature of pairs is that they are immutable. It means you cannot give an existing pair a new value or a new name. But of course, you can assign a completely new pair to the same variable:

```raku
my $pair = name => 'Anna';
$pair = name => 'John';
say $pair.value; # John
```

## Subscripting

There is another way to read the value of a pair. You can subscript it with the name of its key in angle brackets. This is how:

```raku
say $pair<name>;
```

Note that you do not need quotes around the key if it has no spaces. If it has spaces, the rules are a bit stricter:

```raku
my $pair = 'employee name' => 'Julie Madelon';
say $pair{'employee name'};
```

Pay attention: this time, we use curly braces.

{% include nav.html %}
