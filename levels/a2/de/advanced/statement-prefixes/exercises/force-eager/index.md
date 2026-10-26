---
title: Sofortige Auswertung erzwingen
---

{% include menu.html %}

## Aufgabe

Das `eager`-Präfix macht das Gegenteil von `lazy`. Es lässt Raku die ganze Liste sofort erzeugen. Dann ist die Liste nicht mehr lazy. Zeige den Unterschied mit `.is-lazy`.

Gib zuerst aus, ob der unendliche Bereich `1 .. Inf` lazy ist. Gib dann aus, ob `eager 1..3` lazy ist. Gib zuletzt aus, ob `lazy 1..3` lazy ist. Die Ergebnisse müssen `True`, `False`, `True` sein.

## Beispiel

Das Programm gibt aus:

```
True
False
True
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
