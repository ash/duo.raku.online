---
title: Ampeln
---

{% include menu.html %}

## Aufgabe

Definiere ein Enum `Light` mit den Konstanten `red`, `amber` und `green`. Lass sie in dieser Reihenfolge. Deklariere eine Variable mit dem Enum als Typ: `my Light $current`. Setze sie auf `red`. Gib die Ampelfarbe und die Zahl dahinter aus. Benutze die Form `red is 0`.

Dann **wechsle die Ampel zweimal**. Setze `$current` zuerst auf `amber`. Dann setze sie auf `green`. Gib sie nach jeder Änderung auf die gleiche Weise aus. So geht die Ampel `red` → `amber` → `green`.

Vielleicht denkst du, dass `$current++` von selbst zur nächsten Farbe geht. Probiere es aus und schau, was passiert.

## Beispiel

Das Programm gibt aus:

```
red is 0
amber is 1
green is 2
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
