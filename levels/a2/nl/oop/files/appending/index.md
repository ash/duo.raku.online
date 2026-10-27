---
title: Aan een bestand toevoegen
translations_gpt:
---

{% include menu.html %}

Normaal vervangt `spurt` de hele oude inhoud van het bestand. Maar misschien wil je iets aan het eind van een bestand toevoegen. Geef daarvoor het benoemde argument `:append` mee:

```raku
spurt 'log.txt', "line1\n";
spurt 'log.txt', "line2\n", :append;

print slurp 'log.txt';
```

De tweede `spurt` bewaart de oude inhoud. Hij zet de nieuwe regel erachter. Dus heeft het bestand op het eind beide regels:

```
line1
line2
```

Zonder `:append` schrijft de tweede aanroep over het bestand heen. Dan heeft het bestand alleen `line2`. Iets aan het eind van een bestand zetten heet toevoegen (append). Het is bijvoorbeeld nuttig voor logbestanden. Een logbestand houdt een verslag bij van het werk van een programma. Bij elke start voegt het programma iets aan dit verslag toe. Zo groeit het verslag. Het programma begint niet opnieuw met een leeg bestand.

{% include nav.html %}
