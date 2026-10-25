---
title: Quoting string arrays
---

{% include menu.html %}

Sometimes the items of an array are short strings with no spaces. Raku has a nice way to give such an array its values.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

You can put extra spaces around the angle brackets. Or you can write them without spaces. You decide. The compiler accepts both ways.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Both ways give the same result as this simple version:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Array or List

Note one thing about the examples above. The quotation `< . . . >` creates a `List`. It does not create an `Array`. You can check this with the `WHAT` method:

```raku
say <a b c>.WHAT; # (List)
```

But you can assign it to an array. Then you get an array with the elements of the list.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
