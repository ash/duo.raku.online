---
title: Interpolating hashes
---

{% include menu.html %}

You can interpolate hash elements in double-quoted strings. Write them in the same way as in the program code: `%data<FR>`. You can also interpolate the whole hash. For this, add empty angle brackets or empty curly braces: `%data{}`. This program shows how it works:

```raku
my %data = FR => 'Paris', IT => 'Rome';

say "%data<FR>";
say "%data<>";

# Or:
# say "%data{}";
```

The program prints the data we want:

```console
$ raku t.raku
Paris
FR	Paris
IT	Rome
```

Note that a whole hash can print more than one line.

{% include nav.html %}
