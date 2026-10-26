---
title: 'Solution: Nach jedem Schritt'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
my $sum = 0;

for 1..3 {
    NEXT say "sum so far: $sum";
    $sum += $_;
}
```

🦋 Du findest den Quellcode in der Datei [next-phaser.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/next-phaser.raku).

## Ausgabe

```
sum so far: 1
sum so far: 3
sum so far: 6
```

## Kommentare

1. Der `NEXT`-Phaser steht zuerst, aber er läuft am *Ende* jedes Durchlaufs. Bis dahin hat der Rumpf die aktuelle Zahl schon zu `$sum` addiert.

1. Nach dem ersten Durchlauf ist `$sum` also `1`. Nach dem zweiten ist sie `3` und nach dem dritten `6`. In einer Schleife ist `NEXT` der Weg, etwas zwischen den Durchläufen auszuführen. Er ist anders als `FIRST`, der einmal am Anfang läuft. Er ist auch anders als `LAST`, der einmal am Ende läuft.

{% include nav.html %}
