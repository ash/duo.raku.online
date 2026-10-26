---
title: Reekspatronen
translations_gpt:
---

{% include menu.html %}

De `...`-operator kan meer vinden dan rekenkundige stappen.

Geef hem drie waarden die groeien door vermenigvuldiging. Dan gaat hij verder met een _meetkundige_ reeks:

```raku
say 1, 2, 4 ... 64; # (1 2 4 8 16 32 64)
```

Hier is elke waarde twee keer de waarde ervoor. Dus verdubbelt de reeks elke keer. Hij stopt als hij `64` bereikt.

Reeksen kunnen ook andere waarden hebben, niet alleen getallen. Met tekenreeksen gebruikt Raku de volgorde van het alfabet:

```raku
say 'a' ... 'e'; # (a b c d e)
```

Een reeks kan ook omlaag tellen. Als het eindpunt kleiner is dan het begin, worden de waarden kleiner:

```raku
say 10 ... 1; # (10 9 8 7 6 5 4 3 2 1)
```

Elke keer laat je het patroon zien met een voorbeeld. Dan voegt de `...`-operator de andere waarden toe.

{% include nav.html %}
