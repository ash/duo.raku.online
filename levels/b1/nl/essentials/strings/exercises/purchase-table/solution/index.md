---
title: 'Solution: Aankoop tabel'
---

{% include menu.html %}

## Code

Hier is een mogelijke oplossing:

```raku
my $stoel-prijs = 20.57;
my $stoelen = 4;
my $stoelen-totaal = $stoel-prijs * $stoelen;

my $tafel-prijs = 50.18;
my $tafels = 1;
my $tafels-totaal = $tafel-prijs * $tafels;

say "Item\tPrijs\tN\tTotaal";
say "Stoelen\t\$$stoel-prijs\t$stoelen\t\$$stoelen-totaal";
say "Tafels\t\$$tafel-prijs\t$tafels\t\$$tafels-totaal";
```

Alle getallen staan direct in de code en zijn opgeslagen in een paar variabelen. We gebruiken ook de vermenigvuldigingsoperator `*` om het resultaat te berekenen. We leren meer over operators in de volgende secties van de cursus. Maar nu al zou code zoals `$stoel-prijs * $stoelen` geen vragen moeten oproepen.

Drie regels code printen de drie regels van de tabel, samen met de kop. Let op hoe tabtekens `\t` de kolommen scheiden. In de datarijen zie je ook een geëscapet dollarteken: `\$`. Er staan ook verschillende variabelen die we willen interpoleren.

🦋 Je kunt de broncode vinden in het bestand [purchase-table.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/strings/purchase-table.raku).

## Uitvoer

Voer het programma uit en zie hoe het de tabel afdrukt:

```
$ raku exercises/strings/purchase-table.raku
Item    Prijs   N      Totaal
Stoelen $20.57  4      $82.28
Tafels  $50.18  1      $50.18
```

## Opmerkingen

Heb je de streepjes gezien in namen van variabelen zoals `$stoel-prijs` of `$tafels-totaal`? In Raku is dit een heel normale manier om variabelen een naam te geven.

Raak niet in de war door de twee dollartekens naast elkaar. Raku leest ze apart. In `\$$prijs` is bijvoorbeeld het eerste dollarteken geëscapet, dus het staat voor zichzelf. Het tweede is een deel van de variabelenaam `$prijs`.

We zetten alle strings tussen dubbele aanhalingstekens. Dat maakt interpolatie van de variabelen en speciale tekens mogelijk.

We komen terug op deze taak als we arrays en hashes kennen.

{% include nav.html %}
