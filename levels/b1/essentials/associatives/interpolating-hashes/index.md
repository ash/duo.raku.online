---
title: Interpolating hashes
---

{% include menu.html %}

You can interpolate hash elements in double-quoted strings. Write them as you do in the program itself: `%data<FR>`. To interpolate the whole hash, add a pair of empty angle brackets or curly braces: `%data{}`. The following program shows how this works:

```raku
my %data = FR => 'Paris', IT => 'Rome';

say "%data<FR>";
say "%data<>";

# Or:
# say "%data{}";
```

This program prints the data we asked for:

```console
$ raku t.raku
Paris
FR	Paris
IT	Rome
```

Note that when you print the whole hash, the output may take several lines.

{% include nav.html %}
