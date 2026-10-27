---
title: Quiz — Cancellare file
translations_gpt:
---

{% include menu.html %}

Che cosa stampa questo programma?

```raku
mkdir 'data';
spurt 'data/x.txt', 'hi';
rmdir 'data';
say 'data'.IO.e;
```

{:.quiz}
1 | True
0 | False
0 | un errore
0 | Nil

{% include quiz.html %}

<div class="extended-explanation">

`rmdir` rimuove solo una directory **vuota**. Qui in `data` c'è ancora `x.txt`. Quindi `rmdir` non rimuove niente. La directory resta al suo posto. Per questo `.e` dà ancora `True`. Come puoi cancellare la directory? Prima rimuovi tutto quello che c'è dentro, per esempio con `.unlink for 'data'.IO.dir`. Poi chiama `rmdir`.

</div>

{% include nav.html %}
