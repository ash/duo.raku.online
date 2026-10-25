---
title: '`put`'
---

{% include menu.html %}

`put` rutīna veic to pašu darbu kā [`print`](../print). Bet pēc noklusējuma tā arī pievieno jaunu rindu beigās:

1. Izsauc `Str` metodi uz saviem argumentiem, lai pārvērstu tos par virkni.
2. Pievieno jaunas rindas rakstzīmi.
3. Nosūta virkni uz `STDOUT` plūsmu.

Daži piemēri:

```raku
42.put;
put 'Alpha', 'Beta';

my @array = 3, 4, 5;
put @array;

my %hash = a => 'b', c => 'd';
%hash.put;
```

Lūk, ko programma izdrukā:

```console
$ raku t.raku
42
AlphaBeta
3 4 5
a	b
c	d
```

%%tipblock
## Jauna rinda `put`

`put` pēc izvades pievieno dažas rakstzīmes. Konkrētās rakstzīmes nāk no izvades plūsmas `nl-out` metodes. Tās noklusējuma vērtība ir `\n`.
%%/tipblock

{% include nav.html %}
