---
title: Speciale en dynamische variabelen
---

{% include menu.html %}

Een variabelenaam in Raku kan na de sigil een tweede teken hebben. Dit teken is een _twigil_. De twigil vertelt je waar de variabele leeft. Hij vertelt je ook hoe Raku hem vindt. De variabele kan bijvoorbeeld dynamisch zijn. Of de compiler kan hem aan je geven. Of hij kan bij een object horen.

Dit onderdeel legt twigils uit. Daarna kijkt het goed naar het nuttigste soort: _dynamische_ variabelen. Raku vindt een gewone variabele via zijn lexicale scope. Dat is het blok waarin je hem declareert. Raku vindt een dynamische variabele op een andere manier. Raku zoekt in de call stack. De call stack toont welke code de huidige code aanroept. Tot slot toont het onderdeel de speciale variabelen die Raku je geeft.

{% include nav.html %}
