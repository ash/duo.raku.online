---
title: '`put`'
---

{% include menu.html %}

`put` rutīna darbojas kā [`print`](../print). Bet pēc noklusējuma tā pievieno jaunu rindu beigās:

1. Pārvērš savus argumentus par virkni. Lai to izdarītu, tā izsauc uz tiem `Str` metodi.
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

Šeit ir programmas izvade:

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

Kādas rakstzīmes `put` pievieno pēc izvades? Tā tās ņem no izvades plūsmas `nl-out` metodes. Noklusējuma vērtība ir `\n`.
%%/tipblock

{% include nav.html %}
