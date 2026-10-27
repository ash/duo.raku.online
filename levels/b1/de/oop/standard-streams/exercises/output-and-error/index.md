---
title: Übung ’Ausgabe und Fehler‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Ein Programm addiert die Liste der Zahlen `3, 5, 7` in einer Schleife. Schicken Sie in jeder Runde den aktuellen Zwischenstand als Fortschrittsmeldung an die Standardfehlerausgabe. Schicken Sie nach der Schleife das Endergebnis an die Standardausgabe. Verwenden Sie dafür direkt die Handles der Ströme.

Diese Trennung ist wichtig. Sie können das Ergebnis speichern oder an ein anderes Programm weitergeben. Die Fortschrittsmeldungen bleiben währenddessen auf der Standardfehlerausgabe und stören nicht.

## Beispiel

Wenn Sie das Programm ausführen, erscheinen beide Ströme auf dem Bildschirm. Zuerst kommen die Zwischenstände und dann das Endergebnis:

```
running total: 3
running total: 8
running total: 15
15
```

Aber wenn Sie die Standardfehlerausgabe wegwerfen, bleibt nur das eigentliche Ergebnis übrig:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
