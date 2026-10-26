---
title: Nach jedem Schritt
---

{% include menu.html %}

## Problem

Der `NEXT`-Phaser läuft am *Ende* jedes Durchlaufs einer Schleife. Das ist ein guter Moment, um den Fortschritt zu melden.

Speichere in `$sum` eine Summe, die mit der Schleife wächst. Sie beginnt bei `0`. Gehe in einer Schleife über `1..3` und addiere bei jedem Durchlauf zuerst die aktuelle Zahl zu `$sum`. Verwende dann einen `NEXT`-Phaser, um nach jedem Durchlauf `sum so far: $sum` auszugeben.

Achte auf die Reihenfolge. Der `NEXT`-Phaser läuft nach dem Rumpf. Deshalb *enthält* die Summe, die er zeigt, auch die aktuelle Zahl.

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
