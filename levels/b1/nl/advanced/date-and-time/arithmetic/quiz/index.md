---
title: Quiz — Datumrekenen
---

{% include menu.html %}

Wat print het volgende programma?

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

Als je een geheel getal optelt, gaat de datum zoveel dagen vooruit. Hij gaat automatisch door naar de volgende maand. Vijf dagen na 28 januari 2026 is het 2 februari. Dat zijn de laatste drie dagen van januari (29, 30, 31) en dan nog twee.

</div>

{% include nav.html %}
