---
title: '`put`'
---

{% include menu.html %}

Die Routine `put` macht dieselbe Arbeit wie [`print`](../print). Aber standardmäßig fügt sie am Ende noch eine neue Zeile hinzu:

1. Ruft die Methode `Str` auf ihren Argumenten auf, um sie in einen String umzuwandeln.
1. Fügt ein Zeilenumbruchzeichen hinzu.
1. Sendet den String an den `STDOUT`-Stream.

Einige Beispiele:

```raku
42.put;
put 'Alpha', 'Beta';

my @array = 3, 4, 5;
put @array;

my %hash = a => 'b', c => 'd';
%hash.put;
```

Das gibt das Programm aus:

```console
$ raku t.raku
42
AlphaBeta
3 4 5
a	b
c	d
```

%%tipblock
## Eine neue Zeile von `put`

`put` fügt nach der Ausgabe einige Zeichen hinzu. Die genauen Zeichen kommen aus der Methode `nl-out` des Ausgabestreams. Ihr Standardwert ist `\n`.
%%/tipblock

{% include nav.html %}
