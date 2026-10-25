---
title: Arrays
---

{% include menu.html %}

Arrays zijn aggregatiedatatypen, wat betekent dat ze meer dan één waarde kunnen bevatten. Daardoor zijn ze anders dan [scalaire items](/nl/essentials/scalar-variables). Je kunt array-elementen indexeren (of _subscripten_). Met andere woorden: elk element heeft een positie. Daarom heeft dit soort data de algemene naam positionals.

Voor array-variabelen is er een andere sigil: `@`. De regels voor de naam van de variabele zijn dezelfde als [voor scalairs](/nl/essentials/scalar-variables/identifiers/).

```raku
my @cities;
```

We hebben nu een array gemaakt met de naam `@cities`. Je kunt hem met een paar waarden vullen:

```raku
@cities = 'Parijs', 'Rome', 'Berlijn';
```

Je kunt de waarden ook meteen geven, als je de array maakt:

```raku
my @cities = 'Parijs', 'Rome', 'Berlijn';
```

## Indexeren

Om één item van een array te krijgen, zet je een paar haakjes achter de naam:

```raku
say @cities[1];
```

Let op dat de sigil altijd hetzelfde blijft. Elementen worden vanaf nul geteld, dus in ons voorbeeld is het element `@cities[1]` gelijk aan `'Rome'`.

Arrays zijn muteerbaar, wat betekent dat je ze kunt veranderen. Om een item te veranderen, wijs je er gewoon een nieuwe waarde aan toe:

```raku
@cities[0] = 'Rome';
@cities[1] = 'Parijs';
```

Nu print de uitspraak `say @cities[1]` de nieuwe waarde, `'Parijs'`.

## Grootte

De lengte van een array is het aantal elementen. Om de huidige lengte te krijgen, gebruik je de `elems`-methode:

```raku
say @cities.elems; # 3
```

Als een array staat waar een getal verwacht wordt, krijg je de grootte ervan:

```raku
say +@cities; # 3
```

Hier heeft de [`+` prefix-operator](/nl/essentials/coercion/prefixes) een getal nodig van zijn argument. Daarom geeft `+@cities` het resultaat `3`.

{% include nav.html %}
