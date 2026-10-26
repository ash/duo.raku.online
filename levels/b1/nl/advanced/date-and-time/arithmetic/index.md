---
title: Datumrekenen
---

{% include menu.html %}

Je kunt met datums rekenen. Dat maakt veel alledaagse berekeningen eenvoudig.

Als je een geheel getal bij een datum optelt, gaat die zoveel dagen vooruit. Het resultaat is een nieuwe datum. De maand en het jaar veranderen automatisch als dat nodig is:

```raku
say Date.new(2026, 6, 27) + 7; # 2026-07-04
```

Als je de ene datum van de andere aftrekt, krijg je het aantal dagen ertussen:

```raku
say Date.new(2026, 7, 4) - Date.new(2026, 6, 27); # 7
```

Voor grotere stappen zijn er de methoden `later` en `earlier`. Die accepteren benoemde argumenten zoals `:days`, `:months` of `:years`:

```raku
say Date.new(2026, 6, 27).later(:days(10));    # 2026-07-07
say Date.new(2026, 6, 27).earlier(:months(2)); # 2026-04-27
```

Deze methoden rekenen goed als er een nieuwe maand of een nieuw jaar begint. Je hoeft je dus nooit zorgen te maken over hoeveel dagen een maand heeft.

{% include nav.html %}
