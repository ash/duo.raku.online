---
title: Quiz — Vincoli di tipo
translations_gpt:
---

{% include menu.html %}

Un contenitore è dichiarato così:

```raku
my Int $int;
```

Quale delle assegnazioni qui sotto dà un errore in fase di compilazione?

{:.quiz}
0 | $int = 123;
0 | $int = 100 + 23;
0 | $int = '123'.Int;
1 | $int = 123.45;

{% include quiz.html %}

{% include nav.html %}
