---
title: Schon gesehen?
---

{% include menu.html %}

## Problem

Schreiben Sie ein Programm mit einer Schleife, die Folgendes macht:

1. Bitten Sie den Benutzer, ein Wort einzugeben.
2. Wenn das Programm das Wort schon einmal gesehen hat, geben Sie `Gesehen!` aus.
3. Wenn es das Wort schon mehr als einmal gesehen hat, geben Sie `Schon 2 Mal gesehen!` aus und so weiter.
3. Wiederholen Sie die Schleife.

## Beispiel

So kann die Arbeit mit dem Programm aussehen:

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
