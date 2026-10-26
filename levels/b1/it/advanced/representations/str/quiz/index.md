---
title: Quiz — gist e Str
---

{% include menu.html %}

Cosa stampa il seguente programma?

```raku
my @a = 1, 2, 3;
say @a.Str;
```

{:.quiz}
0 | [1 2 3]
1 | 1 2 3
0 | (1 2 3)
0 | 1, 2, 3

{% include quiz.html %}

<div class="extended-explanation">

`.Str` dà la forma stringa semplice. Qui gli elementi sono solo uniti da spazi, senza parentesi: `1 2 3`. La forma con parentesi, `[1 2 3]`, la ottieni da `.gist`, e quindi anche da `say @a`.

</div>

{% include nav.html %}
