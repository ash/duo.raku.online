---
title: 'Solution: Ein Statistik-Modul verwenden'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

Das Programm, `stats.raku`:

```raku
use Stats;

my @scores = 10, 20, 30, 40;

say "total: { total(@scores) }";
say "mean: { mean(@scores) }";
```

🦋 Du findest die Quelldateien im Verzeichnis [exercises/advanced/modules-basics/stats-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/stats-module).

## Ausgabe

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Kommentare

1. Ein `use Stats` bringt *beide* exportierten Subroutinen auf einmal. `use` importiert alles mit `is export` im Modul. Es importiert nicht nur einen Namen.

1. `mean` ruft `total` im Modul auf. Für den Durchschnitt ruft das Programm `total` nicht selbst auf. Aber es funktioniert trotzdem. Die Subroutinen eines Moduls können sich gegenseitig benutzen. Der Aufrufer sieht nur die exportierten Namen.

1. Die vier Zahlen ergeben zusammen `100`. Also ist der Durchschnitt `100 / 4`. Das ist `25`.

{% include nav.html %}
