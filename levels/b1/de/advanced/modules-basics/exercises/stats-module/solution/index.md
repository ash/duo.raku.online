---
title: 'Solution: Ein Statistik-Modul verwenden'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Ein einziges `use Stats` bringt *beide* exportierten Subroutinen auf einmal ins Programm. `use` importiert alles, was das Modul mit `is export` markiert, nicht nur einen Namen.

1. `mean` ruft `total` innerhalb des Moduls auf. Für den Durchschnitt ruft das Programm `total` nicht selbst auf, aber es funktioniert trotzdem. Die Subroutinen eines Moduls können voneinander abhängen. Der Aufrufer sieht nur die exportierten Namen.

1. Die vier Zahlen ergeben zusammen `100`, also ist der Durchschnitt `100 / 4`, was `25` ergibt.

{% include nav.html %}
