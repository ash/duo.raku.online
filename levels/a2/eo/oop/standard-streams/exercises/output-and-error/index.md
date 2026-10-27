---
title: Eligo kaj eraroj
translations_gpt:
---

{% include menu.html %}

## Problemo

Programo adicias la liston de nombroj `3, 5, 7` en buklo. En ĉiu rondo, sendu la ĝisnunan sumon al norma erarfluo. Ĉi tiu sumo estas la kuranta sumo. Ĝi estas mesaĝo pri la progreso. Post la buklo, sendu la finan rezulton al norma eligo. Uzu la tenilojn de la fluoj rekte.

Kial tio estas grava? Vi povas konservi la rezulton aŭ sendi ĝin al alia programo. La progresmesaĝoj restas sur norma erarfluo. Tie ili ne ĝenas.

## Ekzemplo

Rulu la programon. Vi vidas ambaŭ fluojn sur la ekrano. Unue venas la kurantaj sumoj, poste la fina rezulto:

```
running total: 3
running total: 8
running total: 15
15
```

Sed nun ni forĵetas norman erarfluon. Restas nur la vera rezulto:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
