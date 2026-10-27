---
title: Übung ’Vermerken Sie eine Warnung‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Ein Programm arbeitet mit einem Wert, und der Wert stellt sich als negativ heraus. Wenn der Wert unter null liegt, schicken Sie mit `note` eine Warnung an die Standardfehlerausgabe. Schicken Sie mit `say` das eigentliche Ergebnis, den Betrag, an die Standardausgabe. Verwenden Sie den Wert `-3`.

## Beispiel

Beide Zeilen erscheinen am Bildschirm:

```
Warning: the value is negative
3
```

Wenn Sie die Standardfehlerausgabe wegwerfen, bleibt nur das Ergebnis übrig:

```
$ raku note-a-warning.raku 2>/dev/null
3
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
