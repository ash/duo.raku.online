---
title: Speciale en dynamische variabelen
---

{% include menu.html %}

Een variabelenaam in Raku kan na de sigil een tweede teken hebben. Dit teken heet een _twigil_. De twigil vertelt je waar de variabele leeft en hoe Raku hem vindt. Hij laat bijvoorbeeld zien of de variabele een dynamische scope heeft. Of hij laat zien dat de variabele van de compiler komt of bij een object hoort.

Dit onderdeel legt twigils uit. Daarna kijkt het goed naar het nuttigste soort, _dynamische_ variabelen. Raku zoekt ze op via de call stack, niet via de gewone lexicale scope. Tot slot geeft het een overzicht van de speciale variabelen die Raku voor je definieert.

{% include nav.html %}
