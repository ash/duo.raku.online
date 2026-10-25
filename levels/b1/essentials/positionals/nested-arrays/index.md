---
title: Nested arrays
---

{% include menu.html %}

Arrays can contain any other data, and this includes other arrays. To mark where each nested array begins and ends, use square brackets:

```raku
my @table = 
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400];
```

You can also put one more pair of brackets around the top-level array. This example shows the same data structure as the one before.

```raku
my @table = [
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400]
];
```

To get the inner items, add as many indices as you need. Each pair of square brackets takes you one level deeper into the structure:

```raku
say @table[0][3]; # Prints 4
say @table[2][1]; # Prints 200 
```

{% include nav.html %}
