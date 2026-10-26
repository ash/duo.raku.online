---
title: Quiz — Maanden optellen
---

{% include menu.html %}

Wat print het volgende programma?

```raku
say Date.new(2026, 1, 31).later(:months(1));
```

{:.quiz}
1 | 2026-02-28
0 | 2026-03-03
0 | 2026-02-31
0 | 2026-03-31

{% include quiz.html %}

<div class="extended-explanation">

Eén maand na 31 januari zou "31 februari" zijn, maar die dag bestaat niet. Daarom zet `later` het resultaat terug op de laatste echte dag van die maand. Dat geeft 28 februari 2026. Omdat 2026 geen schrikkeljaar is, heeft februari maar 28 dagen.

</div>

{% include nav.html %}
