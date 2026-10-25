---
title: 'Solution: Einkaufstabelle'
---

{% include menu.html %}

Die Tabelle hat eine Kopfzeile, die Sie mit nur einem `say` ausgeben können. Danach kommen mehrere Zeilen mit der gleichen Struktur. Jede Zeile zeigt den Namen des Artikels, seinen Preis, die Menge und die Gesamtkosten.

Sie wollen die Zeilen in ihrer Reihenfolge behalten. Darum ist ein Array eine gute Wahl für die Artikel. Jede Zeile der Tabelle wird dann ein Element des Arrays.

Auf der zweiten Ebene können Sie jeden Datensatz in einem Hash speichern. Der Hash hat ein paar benannte Felder: `name`, `price` und `quantity`.

Danach braucht das Programm nur noch eine Schleife über die Artikel. In der Schleife berechnet es die Summen und gibt die Zeilen der Tabelle aus.

## Code

Hier ist eine mögliche Lösung für diese Aufgabe:

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
