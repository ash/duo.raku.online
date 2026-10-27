---
title: Eligo kaj eraroj
translations_gpt:
---

{% include menu.html %}

## Problemo

Programo adicias la liston de nombroj `3, 5, 7` en buklo. En ĉiu rondo, sendu la nunan kurantan sumon al norma erarfluo kiel progresmesaĝon. Post la buklo, sendu la finan rezulton al norma eligo. Uzu la flutenilojn rekte.

Ĉi tiu apartigo estas grava. Vi povas konservi la rezulton aŭ plusendi ĝin al alia programo. Dume la progresmesaĝoj ne ĝenas, ĉar ili restas sur norma erarfluo.

## Ekzemplo

Kiam vi rulas la programon, ambaŭ fluoj aperas sur la ekrano. Unue venas la kurantaj sumoj, kaj poste la fina rezulto:

```
running total: 3
running total: 8
running total: 15
15
```

Sed se vi forĵetas norman erarfluon, restas nur la vera rezulto:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
