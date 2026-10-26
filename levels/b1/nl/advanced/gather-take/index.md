---
title: '`gather` en `take`'
---

{% include menu.html %}

Het paar `gather` en `take` is een flexibele manier om een lijst te bouwen. Je zet wat code in een `gather`-blok. Elke keer als deze code `take` aanroept, gaat de waarde naar de lijst die `gather` teruggeeft.

```raku
my @result = gather {
    take 1;
    take 2;
    take 3;
};

say @result; # [1 2 3]
```

De drie `take`-aanroepen geven drie waarden, en `gather` verzamelt ze in een lijst. Deze lijst wordt in `@result` opgeslagen.

Het paar is echt sterk als de `take`-aanroepen verspreid zijn over gewone code. Een voorbeeld is een lus met een voorwaarde. Dan heeft de lijst alleen de waarden die je hebt gekozen om te nemen:

```raku
my @evens = gather for 1..10 {
    take $_ if $_ %% 2;
};

say @evens; # [2 4 6 8 10]
```

Hier gaat de lus over de getallen van 1 tot 10. Maar alleen de even getallen worden genomen. Aan het einde bevat `@evens` dus `2, 4, 6, 8, 10`. De `%%`-operator kijkt of een getal deelbaar is zonder rest.

Deze verdeling van het werk maakt `gather`/`take` zo handig. De code eromheen bepaalt _wanneer_ er een waarde gemaakt wordt. En `gather` verzamelt stilletjes alles wat genomen wordt.

{% include nav.html %}
