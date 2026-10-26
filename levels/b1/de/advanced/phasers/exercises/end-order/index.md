---
title: Die Reihenfolge der ENDs
---

{% include menu.html %}

## Problem

Ein Programm kann mehr als einen `END`-Phaser haben. In diesem Fall laufen sie **umgekehrt** zu der Reihenfolge, in der sie im Code stehen. Der Phaser, den du zuletzt deklarierst, läuft zuerst: Last in, First out.

Schreibe zwei `END`-Phaser. Der erste gibt `first END` aus, und der zweite gibt `second END` aus. Füge danach ein einfaches `say 'body'` hinzu. Sage die Reihenfolge der Ausgabe voraus, und erzeuge dann dieselbe Ausgabe mit deinem Programm.

## Beispiel

Das Programm gibt aus:

```
body
second END
first END
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
