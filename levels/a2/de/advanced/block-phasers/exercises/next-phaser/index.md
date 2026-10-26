---
title: Nach jedem Schritt
---

{% include menu.html %}

## Problem

Der `NEXT`-Phaser läuft am *Ende* jeder Runde einer Schleife. Das ist ein guter Moment, um den Fortschritt zu zeigen.

Speichere eine wachsende Summe in `$sum`. Sie beginnt bei `0`. Schreibe eine Schleife über `1..3`. Addiere in jeder Runde zuerst die aktuelle Zahl zu `$sum`. Gib mit einem `NEXT`-Phaser nach jeder Runde `sum so far: $sum` aus.

Achte auf die Reihenfolge. Der `NEXT`-Phaser läuft nach dem Rumpf. Also *enthält* seine Summe schon die aktuelle Zahl.

## Beispiel

Das Programm gibt aus:

```
sum so far: 1
sum so far: 3
sum so far: 6
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
