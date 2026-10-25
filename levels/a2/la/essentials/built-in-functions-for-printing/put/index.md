---
title: '`put`'
---

{% include menu.html %}

Rutina `put` sicut [`print`](../print) operatur. Sed per defaltam novam lineam in fine addit:

1. Argumenta sua in stringam convertit. Ad hoc methodum `Str` in eis vocat.
1. Characterem novae lineae addit.
1. Stringam ad rivum `STDOUT` mittit.

Pauca exempla:

```raku
42.put;
put 'Alpha', 'Beta';

my @array = 3, 4, 5;
put @array;

my %hash = a => 'b', c => 'd';
%hash.put;
```

Ecce exitus programmatis:

```console
$ raku t.raku
42
AlphaBeta
3 4 5
a	b
c	d
```

%%tipblock
## Nova linea `put`

Quos characteres `put` post exitum addit? Eos ex methodo `nl-out` rivi exitus capit. Valor praedefinitus est `\n`.
%%/tipblock

{% include nav.html %}
