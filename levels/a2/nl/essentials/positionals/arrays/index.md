---
title: Arrays
---

{% include menu.html %}

Arrays zijn aggregatiedatatypen. Dat betekent dat een array meer dan één waarde kan bevatten. Daardoor zijn arrays anders dan [scalaire items](/nl/essentials/scalar-variables). Je kunt de elementen van een array indexeren, of _subscripten_. Met andere woorden: elk element heeft een positie. Daarom noemen we dit soort data positionals.

Array-variabelen hebben een andere sigil: `@`. De regels voor de naam zijn dezelfde als [voor scalairs](/nl/essentials/scalar-variables/identifiers/).

```raku
my @cities;
```

Nu hebben we een array. De naam is `@cities`. Je kunt er een paar waarden in zetten:

```raku
@cities = 'Parijs', 'Rome', 'Berlijn';
```

Je kunt de array ook maken met waarden erin:

```raku
my @cities = 'Parijs', 'Rome', 'Berlijn';
```

## Indexeren

Om één item van een array te krijgen, gebruik je een paar haakjes. Zet ze na de naam van de variabele:

```raku
say @cities[1];
```

Let op: de sigil verandert niet. Hij is altijd `@`. Raku telt de elementen vanaf nul. Dus in ons voorbeeld is `@cities[1]` gelijk aan `'Rome'`.

Arrays zijn muteerbaar. Dat betekent dat je ze kunt veranderen. Om een item te veranderen, geef je het gewoon een nieuwe waarde:

```raku
@cities[0] = 'Rome';
@cities[1] = 'Parijs';
```

Daarna print de uitspraak `say @cities[1]` de nieuwe waarde, `'Parijs'`.

## Grootte

Wat is de lengte van een array? Dat is het aantal elementen. Je krijgt de lengte met de `elems`-methode:

```raku
say @cities.elems; # 3
```

Soms gebruik je een array waar Raku een getal nodig heeft. Dan krijg je de grootte van de array:

```raku
say +@cities; # 3
```

Hier heeft de [`+` prefix-operator](/nl/essentials/coercion/prefixes) een getal nodig van zijn argument. Dus geeft `+@cities` het resultaat `3`.

{% include nav.html %}
