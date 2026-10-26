---
title: Quiz — Valori enum
---

{% include menu.html %}

Cosa stampa il seguente programma?

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

`.value` restituisce il numero dietro una costante. `.key`, invece, restituisce il suo *nome* come stringa. Quindi `Tue.key` è `Tue`, e il numero `2` che le è stato dato non conta.

</div>

{% include nav.html %}
