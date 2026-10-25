---
title: Lists
---

{% include menu.html %}

Lists are similar to arrays, but they are immutable. This means that you cannot change the size or the elements of a list. To create a list, use parentheses:

```raku
my $odd = (1, 3, 5, 7, 9);
```

## Subscripting lists

To get a single element of a list, use square brackets with the index:

```raku
say $odd[3]; # 7
```

However, you cannot set a new value:

```raku
$odd[3] = 8; # Not OK
```

If you try to do this, you get an exception:

    Cannot modify an immutable List ((1 3 5 7 9))
      in block <unit> at t.raku line 4

## Assigning a list to an array

What happens if you save a list in a variable that has the `@` sigil?

```raku
my @data = (40, 42, 44);
```

In this case, the `@data` variable keeps an array, so you can change its elements.

%%tipblock
## Variable vs list

Note that lists are immutable. But you can still reuse the variable that keeps the list.

```raku
my $elements = (1, 2);
say $elements[0]; # 1

$elements = (3, 4);
say $elements[0]; # 3
```

%%/tipblock

{% include nav.html %}
