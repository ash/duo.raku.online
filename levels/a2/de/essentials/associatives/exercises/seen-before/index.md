---
title: Schon gesehen?
---

{% include menu.html %}

## Problem

Schreiben Sie ein Programm mit einer Schleife. Die Schleife macht diese Dinge:

1. Fragen Sie den Benutzer nach einem Wort.
2. Wenn der Benutzer dieses Wort schon einmal eingegeben hat, geben Sie `Gesehen!` aus.
3. Wenn er es schon mehr als einmal eingegeben hat, geben Sie `Schon 2 Mal gesehen!` aus, und so weiter.
3. Wiederholen Sie die Schleife.

## Beispiel

Hier ist ein Beispiel für die Arbeit mit dem Programm:

```console
$ raku seen-before.raku
Wort: Ich
Wort: habe
Wort: noch
Wort: nie
Wort: gesehen
Wort: gesehen
Gesehen!
Wort: das
Wort: gesehen
Schon 2 Mal gesehen!
Wahr
Wort: als
Wort: das
Gesehen!
Wort: gesehen
Schon 3 Mal gesehen!
Wahr
Wort: gesägt
Wort: ^C
```

Um das Programm zu stoppen, drücken Sie `Strg+C`.

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
