---
title: Citeren van string arrays
---

{% include menu.html %}

Soms zijn de items van een array korte strings zonder spaties. Raku heeft een mooie manier om zo'n array zijn waarden te geven.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

Je kunt extra spaties rond de hoekige haken zetten. Of je schrijft ze zonder spaties. Jij beslist. De compiler accepteert beide manieren.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Beide manieren geven hetzelfde resultaat als deze eenvoudige versie:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Array of Lijst

Let op één ding in de voorbeelden hierboven. De aanhalingstekens `< . . . >` maken een `List`. Ze maken geen `Array`. Je kunt dit controleren met de `WHAT`-methode:

```raku
say <a b c>.WHAT; # (List)
```

Maar je kunt de lijst aan een array toewijzen. Dan krijg je een array met de elementen van de lijst.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
