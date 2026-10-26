---
title: Begin zuerst
---

{% include menu.html %}

## Problem

Ein `BEGIN`-Phaser ist nicht nur ein Block, der früh läuft. Er ist auch ein *Ausdruck*. Raku berechnet seinen Wert einmal, wenn es das Programm kompiliert. Dann bleibt der Wert im Programm und ändert sich nicht.

Erstelle eine Variable `$compiled`. Gib ihr ihren ersten Wert mit `BEGIN { 2 + 3 }`. Dann gib die Variable aus. Raku berechnet `2 + 3` während der Kompilierung. Aber du kannst den gespeicherten Wert trotzdem benutzen, wenn das Programm läuft.

## Beispiel

Das Programm gibt aus:

```
5
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
