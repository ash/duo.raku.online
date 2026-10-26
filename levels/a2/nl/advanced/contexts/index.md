---
title: Contexten
translations_gpt: Contexts
---

{% include menu.html %}

In Raku kan een waarde zich op verschillende manieren gedragen. Dat hangt af van de _context_. De context is de plek waar je de waarde gebruikt. Een array kan zich bijvoorbeeld als een getal gedragen. Dat getal is zijn lengte. Dezelfde array kan zich als een string gedragen. Dan plakt Raku de elementen aan elkaar. Hij kan zich ook als `True` of `False` gedragen. Dat laat zien of de array leeg is of niet. De code rond de array bepaalt wat je krijgt.

Context verklaart veel dingen in Raku. Zonder context lijken die dingen vreemd. Waarom is `+@array` bijvoorbeeld een getal? Waarom gedraagt een array in een scalar zich als één item? En waarom controleert `if @array` of de array leeg is? Dit gedeelte toont de belangrijkste contexten.

{% include nav.html %}
