---
title: Code documenteren
---

{% include menu.html %}

Raku heeft een opmaaktaal voor documentatie die in de taal is ingebouwd. Die heet _Pod_, of _Rakudoc_. Je schrijft documentatie direct in je bronbestand met `=`-directieven. De compiler kan ze tonen als opgemaakte tekst. Hij kan ze ook beschikbaar maken voor je programma.

Dit gedeelte behandelt de basisdirectieven van Pod en de opmaakcodes om tekst te markeren. Het laat ook zien hoe je de documentatie kunt opvragen. Je krijgt ze als opgemaakte tekst met `raku --doc`, of als gegevens via de variabele `$=pod`.

{% include nav.html %}
