---
title: Datumrekenen
---

{% include menu.html %}

Je kunt met datums rekenen. Dan zijn veel gewone berekeningen makkelijk.

Je kunt een geheel getal bij een datum optellen. Dan gaat de datum zoveel dagen vooruit. Je krijgt een nieuwe datum. Als het nodig is, verandert Raku ook de maand en het jaar:

```raku
say Date.new(2026, 6, 27) + 7; # 2026-07-04
```

Je kunt ook een datum van een andere datum aftrekken. Je krijgt het aantal dagen ertussen:

```raku
say Date.new(2026, 7, 4) - Date.new(2026, 6, 27); # 7
```

Gebruik voor grotere stappen de methoden `later` en `earlier`. Ze nemen benoemde argumenten, zoals `:days`, `:months` of `:years`:

```raku
say Date.new(2026, 6, 27).later(:days(10));    # 2026-07-07
say Date.new(2026, 6, 27).earlier(:months(2)); # 2026-04-27
```

Deze methoden geven altijd de juiste datum. Ze werken ook als er een nieuwe maand of een nieuw jaar begint. Je hoeft dus nooit te weten hoeveel dagen een maand heeft.

{% include nav.html %}
