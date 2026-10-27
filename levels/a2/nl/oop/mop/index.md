---
title: Het metaobjectprotocol
translations_gpt:
---

{% include menu.html %}

In Raku beschrijft een ander object elke klasse, rol en elk type. Dit object is zijn _metaobject_. Het metaobject kent de naam van het type. Het kent de attributen en de methoden van het type. Het weet ook waar het type in de overervingsboom staat. De manier om deze metaobjecten te gebruiken is het _metaobjectprotocol_, of MOP.

Je gebruikte er al een klein deel van: `.^name` is een MOP-aanroep. Deze sectie legt de `.^`-syntaxis goed uit. Ze toont de nuttigste metamethoden. Dat zijn methoden van een metaobject. Daarmee kun je in een type kijken. Met het MOP kun je zelfs methoden aan een klasse toevoegen. Dat kan terwijl het programma draait.

{% include nav.html %}
