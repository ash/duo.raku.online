---
title: 'Solution: Nach jedem Schritt'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Der `NEXT`-Phaser steht im Code zuerst. Aber er läuft am *Ende* jeder Runde. Dann hat der Rumpf die aktuelle Zahl schon zu `$sum` addiert.

1. Nach der ersten Runde ist `$sum` also `1`. Nach der zweiten Runde ist sie `3`. Nach der dritten Runde ist sie `6`. Mit `NEXT` kann eine Schleife Code zwischen ihren Runden ausführen. `FIRST` ist anders: Er läuft einmal am Anfang. `LAST` ist auch anders: Er läuft einmal am Ende.

{% include nav.html %}
