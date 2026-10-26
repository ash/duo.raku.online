---
title: Ampeln
---

{% include menu.html %}

## Aufgabe

Definiere ein Enum `Light` mit den Konstanten `red`, `amber` und `green`, in dieser Reihenfolge. Deklariere eine Variable mit dem Enum als Typ, `my Light $current`, und setze sie auf `red`. Gib die Ampelfarbe und die Zahl dahinter aus, so wie hier: `red is 0`.

Dann **wechsle die Ampel ein paar Mal**. Weise `$current` den Wert `amber` zu und dann `green`. Gib sie nach jeder Änderung auf die gleiche Weise aus. So gehst du `red` → `amber` → `green`.

Du denkst vielleicht, dass `$current++` von selbst zur nächsten Farbe wechselt. Probiere es aus und sieh nach, was passiert.

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
