---
title: 'Solution: Aankoop tabel'
---

{% include menu.html %}

De tabel heeft een koptekst, die je met maar één `say` kunt printen. Daarna komen er een paar rijen met dezelfde structuur. Elke rij toont de naam van het artikel, de prijs, het aantal en de totale kosten.

Je wilt de rijen in de juiste volgorde houden. Daarom is een array een goede keuze voor de items. Elke regel van de tabel wordt dan één element van de array.

Op het tweede niveau kun je elk record in een hash opslaan. De hash heeft een paar benoemde velden: `name`, `price`, en `quantity`.

Daarna heeft het programma alleen nog een lus over de items nodig. In de lus berekent het de totalen en print het de rijen van de tabel.

## Code

Hier is een mogelijke oplossing voor deze taak:

```raku
my @items = [
    {
        name => 'Stoelen',
        price => 20.57,
        quantity => 4,
    },
    {
        name => 'Tafels',
        price => 50.18,
        quantity => 1,
    }
];

say "Artikel\tPrijs\tAantal\tTotaal";
for @items -> $item {
    my $total = $item<price> * $item<quantity>;
    say "$item<name>\t\$$item<price>\t$item<quantity>\t\$$total";
}
```

🦋 Vind het programma in het bestand [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/purchase-table.raku).

## Uitvoer

```console
$ raku exercises/associatives/purchase-table.raku
Artikel	Prijs	Aantal	Totaal
Stoelen	$20.57	4	$82.28
Tafels	$50.18	1	$50.18
```

{% include nav.html %}
