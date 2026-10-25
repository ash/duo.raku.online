---
title: 'Solution: Einkaufstabelle'
---

{% include menu.html %}

Die Tabelle hat eine Kopfzeile. Sie können sie mit nur einem `say` ausgeben. Nach der Kopfzeile kommen einige Zeilen. Alle Zeilen haben die gleichen Teile. Jede Zeile hat den Namen eines Artikels und seinen Preis. Sie hat auch die Anzahl der Artikel und ihre Gesamtkosten.

Die Reihenfolge der Zeilen muss gleich bleiben. Darum ist ein Array ein guter Platz für die Artikel. Jede Zeile der Tabelle ist ein Element des Arrays.

Auf der zweiten Ebene ist jeder Artikel ein Datensatz. Sie können ihn in einem Hash speichern. Der Hash hat ein paar Felder mit Namen: `name`, `price` und `quantity`.

Der Rest des Programms ist eine Schleife über die Artikel. Für jeden Artikel berechnet die Schleife die Summe. Dann gibt sie eine Zeile der Tabelle aus.

## Code

So können Sie die Aufgabe lösen:

```raku
my @items = [
    {
        name => 'Stühle',
        price => 20.57,
        quantity => 4,
    },
    {
        name => 'Tische',
        price => 50.18,
        quantity => 1,
    }
];

say "Artikel\tPreis\tMenge\tGesamt";
for @items -> $item {
    my $total = $item<price> * $item<quantity>;
    say "$item<name>\t\$$item<price>\t$item<quantity>\t\$$total";
}
```

🦋 Finden Sie das Programm in der Datei [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/purchase-table.raku).

## Ausgabe

```console
$ raku exercises/associatives/purchase-table.raku
Artikel	Preis	Menge	Gesamt
Stühle	$20.57	4	$82.28
Tische	$50.18	1	$50.18
```

{% include nav.html %}
