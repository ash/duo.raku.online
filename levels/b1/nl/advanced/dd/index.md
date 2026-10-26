---
title: Debuggen met `dd`
translations_gpt: Raku-programma's debuggen
---

{% include menu.html %}

Er zijn verschillende manieren om een programma te debuggen. Je kunt gewoon waarden tonen met `say`. Of je gebruikt geavanceerdere hulpmiddelen die het programma volgen. In dit onderdeel bekijken we de handige `dd`-routine. Hij hoort bij de Rakudo-compiler, maar de Raku-taalstandaard bevat hem niet.

De naam `dd` staat voor _data dumper_. De routines `say` en `put` zijn voor de normale uitvoer van een programma. Maar `dd` toont een waarde in een vorm die handig is voor ontwikkelaars. Dit is dezelfde codeachtige vorm die je krijgt van de [`.raku`](/nl/advanced/representations/raku-method)-methode. We zagen deze methode in het vorige onderdeel. `dd` schrijft naar de standaardfoutstroom. Daarom mengt de uitvoer niet met wat je programma voor de gebruiker toont.

{% include nav.html %}
