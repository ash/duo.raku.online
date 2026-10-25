---
title: Quoting string arrays
---

{% include menu.html %}

Some string arrays have only short strings with no spaces in them. For such arrays, Raku offers a nice syntax to set their values.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

You can decide whether to add extra spaces around the angle brackets or not. The compiler accepts both options.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Both forms are the same as this simple, direct version:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Array vs List

Note that in the examples above, the quotation `< . . . >` creates a `List`, not an `Array`. You can check this by calling the `WHAT` method:

```raku
say <a b c>.WHAT; # (List)
```

However, if you assign it to an array, the array gets the same elements.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
