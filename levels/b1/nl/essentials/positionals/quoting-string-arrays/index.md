---
title: Citeren van string arrays
---

{% include menu.html %}

Sommige string-arrays hebben alleen korte strings zonder spaties erin. Voor zulke arrays biedt Raku een mooie syntaxis om hun waarden in te stellen.

```raku
my @digits = <zero one two three four five six seven eight nine>;
```

Je kunt zelf beslissen of je extra spaties rond de hoekige haken zet of niet. De compiler accepteert beide opties.

```raku
my @digits = < zero one two three four five six seven eight nine >;
```

Beide vormen zijn hetzelfde als deze eenvoudige, directe versie:

```raku
my @digits = 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine';
```

%%tipblock
## Array vs Lijst

Let op dat in de voorbeelden hierboven de aanhalingstekens `< . . . >` een `List` maken, geen `Array`. Je kunt dit controleren door de `WHAT`-methode aan te roepen:

```raku
say <a b c>.WHAT; # (List)
```

Maar als je de lijst aan een array toewijst, krijgt de array dezelfde elementen.

```raku
my @a = <a b c>;
say @a.WHAT; # (Array)
```

%%/tipblock

{% include nav.html %}
