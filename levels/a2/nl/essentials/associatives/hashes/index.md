---
title: Hashes
---

{% include menu.html %}

Een _hash_ is nog een associatief datatype in Raku. Het is een aggregaat datatype. Hij bevat veel items. Elk item heeft een naam en een waarde. Hash-variabelen gebruiken een nieuwe sigil: `%`.

```raku
my %capitals;
```

Nu kun je de hash gebruiken. Je kunt er een paar beginwaarden aan toewijzen.

```raku
%capitals = Frankrijk => 'Parijs', Italië => 'Rome';
```

Je kunt ook beide dingen tegelijk doen. Dat werkt ook bij andere datatypes:

```raku
my %capitals = Frankrijk => 'Parijs', Italië => 'Rome';
```

## De elementen krijgen

Om een element te krijgen, subscript je de hash. Dat doe je op dezelfde manier als bij [paren](../pairs). Zet een string tussen hoekige haken of tussen accolades:

```raku
say %capitals<Frankrijk>;
say %capitals{'Italië'};
```

Hashes zijn muteerbaar. Dat betekent dat je ze kunt veranderen. Je kunt de waarden veranderen. Je kunt ook nieuwe toevoegen:

```raku
%capitals<Duitsland> = 'Berlijn';
```

## Sleutels en waarden

Raku heeft twee ingebouwde methoden voor hashes, `keys` en `values`. De methode `keys` geeft een lijst met de sleutels terug. De methode `values` geeft een lijst met de waarden terug:

```raku
say %capitals.keys;
say %capitals.values;
```

Het programma kan bijvoorbeeld dit printen:

    (Duitsland Italië Frankrijk)
    (Berlijn Rome Parijs)

Let op: de elementen van een hash hebben geen volgorde. Maar beide methoden gebruiken dezelfde volgorde.

{% include nav.html %}
