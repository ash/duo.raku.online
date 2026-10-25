---
title: Lijsten
---

{% include menu.html %}

Lijsten lijken op arrays, maar ze zijn onveranderlijk. Je kunt de grootte van een lijst niet veranderen. Je kunt de elementen ook niet veranderen. Gebruik haakjes om een lijst te maken:

```raku
my $odd = (1, 3, 5, 7, 9);
```

## Lijsten indexeren

Om één element van een lijst te krijgen, gebruik je vierkante haken. Zet de index ertussen:

```raku
say $odd[3]; # 7
```

Maar je kunt een element geen nieuwe waarde geven:

```raku
$odd[3] = 8; # Niet OK
```

Als je het probeert, krijg je een uitzondering:

    Kan een onveranderlijke Lijst niet wijzigen ((1 3 5 7 9))
      in block <unit> at t.raku line 4

## Een lijst toewijzen aan een array

Je kunt een lijst bewaren in een variabele met de sigil `@`. Wat gebeurt er dan?

```raku
my @data = (40, 42, 44);
```

Dan bevat de variabele `@data` een array. Je kunt de elementen ervan veranderen.

%%tipblock
## Variabele of lijst

Een lijst is onveranderlijk. Maar je kunt de variabele ervan wel opnieuw gebruiken. Je kunt er een nieuwe lijst in zetten.

```raku
my $elements = (1, 2);
say $elements[0]; # 1

$elements = (3, 4);
say $elements[0]; # 3
```

%%/tipblock

{% include nav.html %}
