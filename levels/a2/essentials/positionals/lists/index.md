---
title: Lists
---

{% include menu.html %}

Lists are like arrays, but they are immutable. You cannot change the size of a list. You cannot change its elements either. Use parentheses to create a list:

```raku
my $odd = (1, 3, 5, 7, 9);
```

## Indexing lists

To get one element of a list, use square brackets. Put the index in them:

```raku
say $odd[3]; # 7
```

But you cannot give an element a new value:

```raku
$odd[3] = 8; # Not OK
```

If you try, you get an exception:

    Cannot modify an immutable List ((1 3 5 7 9))
      in block <unit> at t.raku line 4

## Assigning a list to an array

You can save a list in a variable with the `@` sigil. What happens then?

```raku
my @data = (40, 42, 44);
```

Then the variable `@data` contains an array. You can change its elements.

%%tipblock
## Variable or list

A list is immutable. But you can still use its variable again. You can put a new list in it.

```raku
my $elements = (1, 2);
say $elements[0]; # 1

$elements = (3, 4);
say $elements[0]; # 3
```

%%/tipblock

{% include nav.html %}
