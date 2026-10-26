---
title: Ein Statistik-Modul verwenden
---

{% include menu.html %}

## Problem

Hier ist ein Modul, `Stats.rakumod`. Es exportiert zwei Subroutinen: `total` und `mean`. Die Subroutine `mean` benutzt `total`:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Schreibe ein separates Programm. Es benutzt dieses Modul. Es nimmt die Liste `10, 20, 30, 40`. Es gibt die Summe und den Mittelwert, also den Durchschnitt, dieser Liste aus.

## Beispiel

Führe das Programm mit dem Modul im Suchpfad aus. Es gibt Folgendes aus:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
