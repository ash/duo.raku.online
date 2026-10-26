---
title: Quiz — Contesti
---

{% include menu.html %}

Cosa stampa il seguente programma?

```raku
my @a = 10, 20, 30;
say +@a;
```

{:.quiz}
0 | 60
1 | 3
0 | 10
0 | 10 20 30

{% include quiz.html %}

<div class="extended-explanation">

Il prefisso `+` imposta il contesto numerico. Il valore numerico di un array è il numero dei suoi elementi. Quindi `+@a` è `3` e non la somma. Usa `~` per il contesto stringa, che dà `10 20 30`. Per sommare davvero gli elementi, usa `[+]`.

</div>

{% include nav.html %}
