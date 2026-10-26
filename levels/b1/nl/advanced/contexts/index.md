---
title: Contexten
translations_gpt: Contexts
---

{% include menu.html %}

Een waarde in Raku kan zich anders gedragen, afhankelijk van de _context_ waarin je hem gebruikt. Dezelfde array kan zich bijvoorbeeld gedragen als een getal, en dat getal is zijn lengte. Hij kan zich gedragen als een string, met zijn elementen aan elkaar. Of hij kan zich gedragen als een waarheidswaarde, die laat zien of de array leeg is. Het hangt allemaal af van wat de code eromheen vraagt.

Context verklaart veel van Raku dat anders misschien verrassend lijkt. Het verklaart waarom `+@array` een getal is. Het verklaart waarom een array in een scalar zich als een enkel item gedraagt. En het verklaart waarom `if @array` controleert of de array leeg is. Dit gedeelte behandelt de belangrijkste contexten.

{% include nav.html %}
