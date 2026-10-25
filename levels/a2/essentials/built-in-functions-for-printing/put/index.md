---
title: The put routine
---

{% include menu.html %}

The `put` routine works like [`print`](../print). But by default, it adds a newline at the end:

1. Converts its arguments to a string. For this, it calls the `Str` method on them.
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

Here is the output of the program:

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

What characters does `put` add after the output? It takes them from the `nl-out` method of the output stream. The default value is `\n`.
%%/tipblock

{% include nav.html %}
