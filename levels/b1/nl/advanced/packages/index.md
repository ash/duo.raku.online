---
title: Pakketten en naamruimten
translations_gpt:
---

{% include menu.html %}

Een _naamruimte_ (namespace) is een container met een naam. Die bevat andere dingen met een naam, zoals variabelen en subroutines. Zo botsen namen niet met elkaar: `Maths::pi` en `Physics::pi` kunnen allebei bestaan zonder conflict. Een _pakket_ (package) is de meest eenvoudige soort naamruimte.

Je hebt al een naamruimte gebruikt zonder die zo te noemen: elke `module` maakt een naamruimte aan. Dit gedeelte kijkt direct naar pakketten. Je ziet ook hoe je van buitenaf een naamruimte kunt bereiken. Daarvoor gebruik je `our`-variabelen en het `::`-scheidingsteken.

{% include nav.html %}
