---
title: Lijsten
---

{% include menu.html %}

Lijsten lijken op arrays, maar ze zijn onveranderlijk. Dat betekent dat je de grootte of de elementen van een lijst niet kunt veranderen. Om een lijst te maken, gebruik je haakjes:

```raku
my $odd = (1, 3, 5, 7, 9);
```

## Lijsten subscripten

Om één element van een lijst te krijgen, gebruik je vierkante haken met de index:

```raku
say $odd[3]; # 7
```

Je kunt echter geen nieuwe waarde instellen:

```raku
$odd[3] = 8; # Niet OK
```

Als je dat toch probeert, krijg je een uitzondering:

    Kan een onveranderlijke Lijst niet wijzigen ((1 3 5 7 9))
      in block <unit> at t.raku line 4

## Een lijst toewijzen aan een array

Wat gebeurt er als je een lijst bewaart in een variabele met de sigil `@`?

```raku
my @data = (40, 42, 44);
```

In dit geval bevat de variabele `@data` een array, dus je kunt de elementen ervan veranderen.

%%tipblock
## Variabele vs lijst

Let op dat lijsten onveranderlijk zijn. Maar je kunt de variabele met de lijst wel opnieuw gebruiken.

```raku
my $elements = (1, 2);
say $elements[0]; # 1

$elements = (3, 4);
say $elements[0]; # 3
```

%%/tipblock

{% include nav.html %}
