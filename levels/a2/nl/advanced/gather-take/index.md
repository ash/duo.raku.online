---
title: '`gather` en `take`'
---

{% include menu.html %}

`gather` en `take` werken als een paar. Daarmee kun je op veel manieren een lijst bouwen. Je zet wat code in een `gather`-blok. Elke keer als deze code `take` aanroept, gaat er een waarde in een lijst. Het `gather`-blok geeft je deze lijst.

```raku
my @result = gather {
    take 1;
    take 2;
    take 3;
};

say @result; # [1 2 3]
```

De drie `take`-aanroepen geven drie waarden. `gather` verzamelt ze in een lijst. De lijst gaat naar `@result`.

Het paar is het handigst als de `take`-aanroepen in gewone code staan. Ze kunnen bijvoorbeeld in een lus met een voorwaarde staan. Dan heeft de lijst alleen de waarden die je neemt:

```raku
my @evens = gather for 1..10 {
    take $_ if $_ %% 2;
};

say @evens; # [2 4 6 8 10]
```

Hier gaat de lus over de getallen van 1 tot 10. Maar de code neemt alleen de even getallen. Aan het einde heeft `@evens` dus `2, 4, 6, 8, 10`. De operator `%%` kijkt of een getal deelbaar is zonder rest.

Deze verdeling van het werk maakt `gather`/`take` zo handig. De code rond `take` bepaalt _wanneer_ er een waarde komt. En `gather` verzamelt stilletjes elke waarde die je neemt.

{% include nav.html %}
