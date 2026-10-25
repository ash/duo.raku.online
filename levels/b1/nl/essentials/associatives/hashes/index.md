---
title: Hashes
---

{% include menu.html %}

Een _hash_ is nog een associatief datatype in Raku. Het is een aggregaat datatype dat de naam van elk item aan zijn waarde koppelt. Hash-variabelen gebruiken een nieuwe sigil: `%`.

```raku
my %capitals;
```

Nu kun je de hash gebruiken en hem een paar beginwaarden geven.

```raku
%capitals = Frankrijk => 'Parijs', Italië => 'Rome';
```

Net als bij andere datatypes kun je beide dingen in één stap doen:

```raku
my %capitals = Frankrijk => 'Parijs', Italië => 'Rome';
```

## Toegang tot de elementen

Subscripten werkt ongeveer net zo als wat we bij [paren](../pairs) zagen. Zet een string tussen hoekige haken of tussen accolades:

```raku
say %capitals<Frankrijk>;
say %capitals{'Italië'};
```

Hashes zijn muteerbaar, dus je kunt bestaande waarden veranderen en nieuwe toevoegen:

```raku
%capitals<Duitsland> = 'Berlijn';
```

## Sleutels en waarden

Een hash heeft twee ingebouwde methoden, `keys` en `values`. Ze geven een lijst met zijn sleutels en een lijst met zijn waarden terug:

```raku
say %capitals.keys;
say %capitals.values;
```

Hier is een voorbeeld van wat dit programma print:

    (Duitsland Italië Frankrijk)
    (Berlijn Rome Parijs)

Let op dat de elementen van een hash niet in een bepaalde volgorde staan. Maar de methoden hierboven geven de sleutels en de waarden in dezelfde volgorde terug.

{% include nav.html %}
