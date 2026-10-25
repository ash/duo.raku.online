---
title: Multi-functies
---

{% include menu.html %}

Raku heeft _meervoudige dispatch_ op basis van de functiesignatuur. Daarmee kun je functies maken met dezelfde naam, maar met verschillende soorten invoergegevens. Gebruik de declarator `multi` voor elke variant van de functie.

```raku
multi sub add(Int $x, Int $y) { $x + $y }
multi sub add(Str $x, Str $y) { $x ~ $y }
```

Het is prima om `sub` na `multi` weg te laten.

Als er twee varianten van dezelfde functie zijn, voert de compiler meervoudige dispatch uit. Zijn keuze hangt af van de argumenten die hij in de functieaanroep ziet. Vergelijk deze twee aanroepen:

```raku
say add(10, 20); # 30
say add('10', '20'); # 1020
```

De eerste aanroep voert de variant met integer-parameters uit. De tweede aanroep voert de andere variant uit, die twee strings verwacht.

## Letterlijke parameters

Een interessant gebruik van multi-functies zijn varianten met letterlijke waarden als parameters. Kijk naar de volgende twee varianten:

```raku
multi sub f(42) {say 'Dit is het antwoord'}
multi sub f($x) {say "$x is niet het antwoord"}
```

De eerste variant wordt alleen uitgevoerd als je de functie met precies 42 aanroept. In alle andere gevallen gebruikt Raku de tweede variant. Het maakt niet uit in welke volgorde deze functies gedefinieerd zijn.

```raku
f(10); # 10 is niet het antwoord
f(42); # Dit is het antwoord
```

{% include nav.html %}
