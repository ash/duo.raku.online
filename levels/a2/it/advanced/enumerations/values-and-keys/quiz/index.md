---
title: Quiz — Valori enum
---

{% include menu.html %}

Cosa stampa questo programma?

```raku
enum Day (Mon => 1, Tue => 2);
say Tue.key;
```

{:.quiz}
1 | Tue
0 | 2
0 | 1
0 | Mon

{% include quiz.html %}

<div class="extended-explanation">

`.value` dà il numero dietro una costante. Ma `.key` dà il suo *nome* come stringa. Quindi `Tue.key` è `Tue`. Qui il numero `2` di questa costante non conta.

</div>

{% include nav.html %}
