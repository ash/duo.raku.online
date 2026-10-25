---
title: Uitvoer met `say`
---

{% include menu.html %}

De functie `say` drukt waarden af naar de standaard uitvoerstream, `STDOUT`. Dit heet ook een subroutine, of gewoon een routine. Als je het programma vanuit een terminal uitvoert, verschijnt de uitvoer daar. Bij online diensten gaat die naar een speciaal deel van de webpagina.

Hier is een voorbeeld van het gebruik van `say`:

```raku
say 42;
```

Deze regel kan deel zijn van een groter programma of het hele programma. Natuurlijk drukt hij `42` af naar de uitvoer.

Laten we nu met strings werken:

```raku
say 'Hello, World!';
```

En daar is het: `Hello, World!` op het scherm.

`say` kan meerdere argumenten krijgen, dus we kunnen meer waarden tegelijk afdrukken:

```raku
say 42, 'Hello, World!';
```

Let er wel op dat de delen worden samengevoegd tot één string: `42Hello, World!`. Het is dus beter om er een spatie tussen te zetten. Je kunt dit probleem nu vast zelf oplossen. Bijvoorbeeld zo:

```raku
say 42, ' ', 'Hello, World!';
```

Na alle argumenten voegt `say` een nieuwe-regelteken toe aan de uitvoer.

{% include nav.html %}
