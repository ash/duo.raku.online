---
title: Reekspatronen
translations_gpt:
---

{% include menu.html %}

De `...`-operator kent meer patronen dan alleen rekenkundige stappen.

Stel dat je hem drie waarden geeft die door vermenigvuldiging groeien. Dan gaat hij verder met een _meetkundige_ reeks:

```raku
say 1, 2, 4 ... 64; # (1 2 4 8 16 32 64)
```

Hier is elke waarde twee keer de vorige. Dus blijft de reeks verdubbelen tot hij `64` bereikt.

Reeksen kunnen meer bevatten dan getallen. Met tekenreeksen volgt Raku de gewone volgorde van het alfabet:

```raku
say 'a' ... 'e'; # (a b c d e)
```

Een reeks kan ook aftellen. Als het eindpunt lager is dan het begin, worden de waarden kleiner:

```raku
say 10 ... 1; # (10 9 8 7 6 5 4 3 2 1)
```

In elk geval laat je het patroon zien met een voorbeeld. De `...`-operator vult dan de rest aan.

{% include nav.html %}
