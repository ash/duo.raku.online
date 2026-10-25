---
title: '`put`'
---

{% include menu.html %}

Die Routine `put` funktioniert wie [`print`](../print). Aber standardmäßig fügt sie am Ende eine neue Zeile hinzu:

1. Wandelt ihre Argumente in einen String um. Dazu ruft sie die Methode `Str` auf ihnen auf.
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

Hier ist die Ausgabe des Programms:

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

Welche Zeichen fügt `put` nach der Ausgabe hinzu? `put` nimmt sie aus der Methode `nl-out` des Ausgabestreams. Der Standardwert ist `\n`.
%%/tipblock

{% include nav.html %}
