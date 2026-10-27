---
title: 'Averto per `note`'
translations_gpt:
---

{% include menu.html %}

## Problemo

Programo laboras kun valoro. La valoro estas negativa. Se la valoro estas sub nulo, sendu averton al norma erarfluo. Uzu `note` por tio. Poste sendu la veran rezulton al norma eligo per `say`. La rezulto estas la absoluta valoro de la nombro. Tio estas la nombro sen la minusa signo. Uzu la valoron `-3`.

## Ekzemplo

Vi vidas ambaŭ liniojn sur la ekrano:

```
Warning: the value is negative
3
```

Ĉi tie, ni forĵetas norman erarfluon. Restas nur la rezulto:

```
$ raku note-a-warning.raku 2>/dev/null
3
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
