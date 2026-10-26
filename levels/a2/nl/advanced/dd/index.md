---
title: Debuggen met `dd`
translations_gpt: Raku-programma's debuggen
---

{% include menu.html %}

Je kunt een programma op verschillende manieren debuggen. Debuggen betekent fouten zoeken en oplossen. De eenvoudigste manier is waarden tonen met `say`. Er zijn ook ingewikkeldere hulpmiddelen. Die volgen het programma stap voor stap. In dit onderdeel bekijken we de handige routine `dd`. Deze is ingebouwd in de Rakudo-compiler. Maar hij hoort niet bij de Raku-taalstandaard.

De naam `dd` betekent _data dumper_. Een data dumper toont gegevens voor de programmeur. `say` en `put` zijn voor de normale uitvoer van een programma. Maar `dd` is anders. Het toont een waarde in een vorm voor programmeurs. Deze vorm lijkt op code. Het is dezelfde vorm die de [`.raku`](/nl/advanced/representations/raku-method)-methode geeft. Je zag deze methode in het vorige onderdeel. `dd` schrijft naar de standaardfoutstroom. Daarom mengt het niet met de uitvoer voor de gebruiker.

{% include nav.html %}
