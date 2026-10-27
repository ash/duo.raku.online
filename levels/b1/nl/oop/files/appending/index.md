---
title: Aan een bestand toevoegen
translations_gpt:
---

{% include menu.html %}

Standaard vervangt `spurt` alles wat er in het bestand stond. Om in plaats daarvan iets aan het eind van een bestaand bestand toe te voegen, geef je het benoemde argument `:append` mee:

```raku
spurt 'log.txt', "line1\n";
spurt 'log.txt', "line2\n", :append;

print slurp 'log.txt';
```

De tweede `spurt` behoudt de oude inhoud en zet de nieuwe regel erachter. Dus bevat het bestand op het eind beide regels:

```
line1
line2
```

Zonder `:append` zou de tweede aanroep over het bestand heen schrijven. Dan zou alleen `line2` overblijven. Toevoegen is nuttig voor dingen als logbestanden. Elke keer dat een programma draait, voegt het iets toe aan een groeiend verslag, in plaats van opnieuw te beginnen.

{% include nav.html %}
