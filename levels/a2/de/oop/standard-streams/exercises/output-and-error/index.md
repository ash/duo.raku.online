---
title: Übung ’Ausgabe und Fehler‘
translations_gpt:
---

{% include menu.html %}

## Aufgabe

Ein Programm addiert die Liste der Zahlen `3, 5, 7` in einer Schleife. Schicken Sie in jeder Runde die bisherige Summe an die Standardfehlerausgabe. Diese Summe ist der Zwischenstand. Sie ist eine Meldung über den Fortschritt. Schicken Sie nach der Schleife das Endergebnis an die Standardausgabe. Verwenden Sie dafür direkt die Handles der Ströme.

Warum ist das wichtig? Sie können das Ergebnis speichern oder an ein anderes Programm schicken. Die Fortschrittsmeldungen bleiben auf der Standardfehlerausgabe. Dort sind sie nicht im Weg.

## Beispiel

Führen Sie das Programm aus. Sie sehen beide Ströme auf dem Bildschirm. Zuerst kommen die Zwischenstände, dann das Endergebnis:

```
running total: 3
running total: 8
running total: 15
15
```

Aber jetzt werfen wir die Standardfehlerausgabe weg. Nur das echte Ergebnis bleibt übrig:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
