---
title: Quiz — Typebeperkingen
translations_gpt:
---

{% include menu.html %}

Hier is de declaratie van een container:

```raku
my Int $int;
```

Welke toewijzing hieronder geeft een fout tijdens het compileren?

{:.quiz}
0 | $int = 123;
0 | $int = 100 + 23;
0 | $int = '123'.Int;
1 | $int = 123.45;

{% include quiz.html %}

{% include nav.html %}
