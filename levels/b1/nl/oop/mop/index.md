---
title: Het metaobjectprotocol
translations_gpt:
---

{% include menu.html %}

Elke klasse, rol en elk type in Raku wordt beschreven door een ander object, dat zijn _metaobject_ heet. Het metaobject kent de naam van het type en zijn plaats in de overervingsboom. Het kent ook de attributen en methoden van het type. De manier om met deze metaobjecten te werken is het _metaobjectprotocol_, of MOP.

Je hebt er al een klein deel van gebruikt: `.^name` is een MOP-aanroep. Deze sectie legt de `.^`-syntaxis goed uit. Ze toont de nuttigste metamethoden om in een type te kijken. En ze laat zien dat je met het MOP zelfs methoden aan een klasse kunt toevoegen. Dat kan terwijl het programma draait.

{% include nav.html %}
