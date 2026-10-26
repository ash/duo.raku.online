---
title: Quiz — Maanden optellen
---

{% include menu.html %}

Wat print dit programma?

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

Eén maand na 31 januari is "31 februari". Maar deze dag bestaat niet. Daarom geeft `later` de laatste echte dag van die maand. Dat is 28 februari 2026. Het jaar 2026 is geen schrikkeljaar. Februari heeft dus 28 dagen.

</div>

{% include nav.html %}
