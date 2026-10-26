---
title: Zwei Funktionen in einem Modul
---

{% include menu.html %}

## Problem

Erstelle ein Modul mit dem Namen `Calc` in der Datei `Calc.rakumod`. Es exportiert zwei Subroutinen: `add` und `mul`. Jede nimmt zwei Argumente. `add` gibt ihre Summe zurück. `mul` gibt ihr Produkt zurück.

Schreibe dann ein separates Programm. Es benutzt das Modul und gibt `add(3, 4)` und `mul(3, 4)` aus. Jedes Ergebnis steht in einer eigenen Zeile.

## Beispiel

Führe das Programm mit dem Modul im Suchpfad aus. Es gibt Folgendes aus:

```console
$ raku -I. calc.raku
7
12
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
