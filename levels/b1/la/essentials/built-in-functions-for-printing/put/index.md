---
title: '`put`'
---

{% include menu.html %}

Rutina `put` idem officium facit ac [`print`](../print). Sed per defaltam etiam novam lineam in fine addit:

1. Methodum `Str` in argumentis suis vocat ut ea in stringam convertat.
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

Hoc est quod programma imprimit:

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

`put` aliquos characteres post exitum addit. Characteres accurati ex methodo `nl-out` rivi exitus veniunt. Valor eius praedefinitus est `\n`.
%%/tipblock

{% include nav.html %}
