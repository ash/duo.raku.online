---
title: Quiz — `gather`
translations_gpt:
---

{% include menu.html %}

Cosa stampa il seguente programma?

```raku
my @r = gather for 1..6 {
    take $_ if $_ %% 3;
};

say @r;
```

{:.quiz}
1 | [3 6]
0 | [1 2 3 4 5 6]
0 | [3]
0 | []

{% include quiz.html %}

<div class="extended-explanation">

`gather` raccoglie solo i valori su cui `take` viene davvero chiamato. Il controllo `$_ %% 3` è vero solo per `3` e `6`. Quindi vengono presi solo questi due, e il risultato è `[3 6]`.

</div>

{% include nav.html %}
