---
title: Pakketten en naamruimten
translations_gpt:
---

{% include menu.html %}

Een _naamruimte_ (namespace) is een container met een naam. Die bevat andere dingen met een naam, bijvoorbeeld variabelen en subroutines. Met naamruimten kunnen twee dingen zonder probleem dezelfde naam hebben. `Maths::pi` en `Physics::pi` kunnen allebei bestaan. Een _pakket_ (package) is de eenvoudigste soort naamruimte.

Je hebt al een naamruimte gebruikt, maar je noemde die niet zo. Elke `module` maakt er een. Dit gedeelte kijkt direct naar pakketten. Het laat ook zien hoe je van buitenaf in een naamruimte komt. Daarvoor gebruik je `our`-variabelen en het scheidingsteken `::`.

{% include nav.html %}
