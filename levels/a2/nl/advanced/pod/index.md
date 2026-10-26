---
title: Code documenteren
---

{% include menu.html %}

Raku heeft een eigen manier om documentatie te schrijven. Die hoort bij de taal. De naam is _Pod_, of _Rakudoc_. Je schrijft de documentatie direct in je bronbestand. Daarvoor gebruik je regels die met `=` beginnen. Die regels heten directieven. De compiler kan de documentatie tonen als opgemaakte tekst. Hij kan ze ook aan je programma geven.

Dit gedeelte toont de basisdirectieven van Pod. Het toont ook de opmaakcodes. Daarmee markeer je woorden in de tekst. Tot slot laat het zien hoe je de documentatie krijgt. Je kunt ze krijgen als opgemaakte tekst met `raku --doc`. Of je kunt ze krijgen als gegevens via de variabele `$=pod`.

{% include nav.html %}
