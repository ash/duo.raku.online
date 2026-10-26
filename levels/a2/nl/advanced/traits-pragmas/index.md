---
title: Traits en pragma's
translations_gpt:
---

{% include menu.html %}

Twee mogelijkheden veranderen hoe Raku je code **compileert**. Dat gebeurt voordat de code draait. De eerste mogelijkheid is een _trait_. Een trait verandert een declaratie. De declaratie kan een variabele of een routine zijn. Je schrijft een trait met `is`. De tweede mogelijkheid is een _pragma_. Een pragma lijkt een beetje op een module. Je zet het aan met `use`, of uit met `no`. Het verandert een regel voor de rest van het lexicale bereik. Met andere woorden: het werkt tot het einde van het blok.

Je hebt al een trait gebruikt, zoals `is default`. Maar je leerde er toen niet veel over. Deze sectie bekijkt traits van dichterbij. Ze laat zien hoe je je eigen trait schrijft. Ze laat ook pragma's zien.

{% include nav.html %}
