---
title: Begin zuerst
---

{% include menu.html %}

## Problem

Ein `BEGIN`-Phaser ist mehr als ein Block, der früh läuft. Er ist auch ein *Ausdruck*. Sein Wert wird einmal berechnet, zur Kompilierzeit. Dann bleibt er fest im Programm.

Verwende `BEGIN { 2 + 3 }`, um den ersten Wert einer Variablen `$compiled` zu setzen, und gib sie dann aus. Die Rechnung `2 + 3` wird ausgeführt, während das Programm noch kompiliert wird. Aber der gespeicherte Wert funktioniert zur Laufzeit ganz normal.

## Beispiel

Das Programm gibt aus:

```
5
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
