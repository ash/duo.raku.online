---
title: The put routine
---

{% include menu.html %}

The `put` routine does the same job as [`print`](../print). But by default, it also adds a newline at the end:

1. Calls the `Str` method on its arguments to convert them to a string.
1. Adds a newline character.
1. Sends the string to the `STDOUT` stream.

A few examples:

```raku
42.put;
put 'Alpha', 'Beta';

my @array = 3, 4, 5;
put @array;

my %hash = a => 'b', c => 'd';
%hash.put;
```

Here is what the program prints:

```console
$ raku t.raku
42
AlphaBeta
3 4 5
a	b
c	d
```

%%tipblock
## A newline of `put`

`put` adds some characters after the output. The exact characters come from the `nl-out` method of the output stream. Its default value is `\n`.
%%/tipblock

{% include nav.html %}
