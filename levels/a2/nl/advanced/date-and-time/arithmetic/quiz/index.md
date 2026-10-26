---
title: Quiz — Datumrekenen
---

{% include menu.html %}

Wat print dit programma?

```raku
say Date.new(2026, 1, 28) + 5;
```

{:.quiz}
1 | 2026-02-02
0 | 2026-01-33
0 | 2026-02-05
0 | 2026-02-03

{% include quiz.html %}

<div class="extended-explanation">

Je telt een geheel getal op. De datum gaat zoveel dagen vooruit. Hij gaat vanzelf door naar de volgende maand. Kijk naar vijf dagen na 28 januari 2026. Januari heeft nog drie dagen: 29, 30 en 31. Daarna komen nog twee dagen. Het antwoord is dus 2 februari.

</div>

{% include nav.html %}
