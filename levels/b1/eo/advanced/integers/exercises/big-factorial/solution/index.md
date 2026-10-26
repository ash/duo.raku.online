---
title: 'Solvo: Kiom da ciferoj'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

## Kodo

```raku
say (2 ** 1000).chars;
```

🦋 Vi povas trovi la fontkodon en la dosiero [big-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/big-factorial.raku).

## Eligo

```
302
```

## Komentoj

1. Raku kalkulas `2 ** 1000` ekzakte. Ĝi nek rondigas la nombron, nek superfluas, ĉar entjeroj havas arbitran precizecon.

1. `chars` kutime estas ĉena metodo. Kiam vi vokas ĝin sur entjero, ĝi unue faras el la nombro dekuman tekston. Poste ĝi nombras la signojn. Ĉi tie estas nek minussigno, nek dekuma punkto. Do la nombro da signoj estas ekzakte la nombro da ciferoj, `302`.

{% include nav.html %}
