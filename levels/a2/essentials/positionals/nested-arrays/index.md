---
title: Nested arrays
---

{% include menu.html %}

An array can contain any other data. It can even contain other arrays. These are nested arrays. Use square brackets to show where each nested array starts and ends:

```raku
my @table = 
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400];
```

You can also add one more pair of brackets. They go around the outer, top-level array. The next example has the same data structure as before.

```raku
my @table = [
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400]
];
```

To get an inner item, add more indices. Add as many as you need. With each pair of square brackets, you go one level deeper:

```raku
say @table[0][3]; # Prints 4
say @table[2][1]; # Prints 200 
```

{% include nav.html %}
