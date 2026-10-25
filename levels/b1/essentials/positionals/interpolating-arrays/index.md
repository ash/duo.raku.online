---
title: Interpolating arrays
---

{% include menu.html %}

You can interpolate array elements in double-quoted strings. Write them as you do in the program itself: `@data[1]`. To interpolate the whole array, add a pair of empty brackets: `@data[]`. The following program shows how this works:

```raku
my @data = 10, 20, 30;

say "First: @data[0], last: @data[1]";
say "All elements: @data[]";
```

This program prints the data we asked for:

```console
$ raku t.raku 
First: 10, last: 20
All elements: 10 20 30
```

{% include nav.html %}
