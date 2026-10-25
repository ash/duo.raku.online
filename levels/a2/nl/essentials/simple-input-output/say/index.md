---
title: Uitvoer met `say`
---

{% include menu.html %}

De functie `say` drukt waarden af naar de standaard uitvoerstream, `STDOUT`. Mensen noemen dit ook een subroutine, of gewoon een routine. Voer je het programma uit in een terminal? Dan zie je de uitvoer daar. Gebruik je een online dienst? Dan gaat de uitvoer naar een speciaal deel van de webpagina.

Hier is een voorbeeld van het gebruik van `say`:

```raku
say 42;
```

Deze regel kan een deel van een groter programma zijn. Hij kan ook het hele programma zijn. Natuurlijk drukt hij `42` af naar de uitvoer.

Laten we nu een string proberen:

```raku
say 'Hello, World!';
```

Goed! Nu staat `Hello, World!` op het scherm.

De routine `say` kan meer dan één argument krijgen. We kunnen dus meerdere waarden tegelijk afdrukken:

```raku
say 42, 'Hello, World!';
```

Maar kijk naar de uitvoer. De delen worden samengevoegd tot één string: `42Hello, World!`. Het is dus beter om er een spatie tussen te zetten. Je kunt dit probleem al oplossen. Bijvoorbeeld zo:

```raku
say 42, ' ', 'Hello, World!';
```

De routine `say` drukt alle argumenten af. Daarna voegt hij een nieuwe-regelteken toe aan de uitvoer.

{% include nav.html %}
