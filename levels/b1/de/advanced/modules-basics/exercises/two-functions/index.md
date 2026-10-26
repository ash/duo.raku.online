---
title: Zwei Funktionen in einem Modul
---

{% include menu.html %}

## Problem

Erstelle ein Modul namens `Calc` in einer Datei `Calc.rakumod`. Es soll zwei Subroutinen exportieren, `add` und `mul`. Sie geben die Summe und das Produkt ihrer beiden Argumente zurück.

Schreibe dann ein separates Programm, das das Modul benutzt. Es soll `add(3, 4)` und `mul(3, 4)` ausgeben, jedes in einer eigenen Zeile.

## Beispiel

Wenn du das Programm mit dem Modul im Suchpfad ausführst, gibt es Folgendes aus:

```console
$ raku -I. calc.raku
7
12
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
