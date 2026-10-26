---
title: Quiz — Precedenza
---

{% include menu.html %}

Cosa stampa questo programma?

```raku
say 2 * 3 ** 2;
```

{:.quiz}
1 | 18
0 | 36
0 | 12
0 | 81

{% include quiz.html %}

<div class="extended-explanation">

`**` ha una precedenza più alta di `*`. Così Raku calcola prima la potenza: `3 ** 2` fa `9`. Poi `2 * 9` fa `18`. Non leggerlo da sinistra a destra come `(2 * 3) ** 2`. Questo dà la risposta sbagliata, `36`.

</div>

{% include nav.html %}
