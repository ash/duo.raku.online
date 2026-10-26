---
title: Ein Statistik-Modul verwenden
---

{% include menu.html %}

## Problem

Du hast ein Modul `Stats.rakumod`, das zwei Subroutinen exportiert, `total` und `mean`. Die Subroutine `mean` baut auf `total` auf:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Schreibe ein separates Programm, das dieses Modul benutzt. Für die Liste `10, 20, 30, 40` soll es sowohl die Summe als auch den Durchschnitt ausgeben.

## Beispiel

Wenn du das Programm mit dem Modul im Suchpfad ausführst, gibt es Folgendes aus:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Lösung

✅ [Siehe die Lösung](solution)

{% include nav.html %}
