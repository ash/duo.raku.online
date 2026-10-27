---
title: 'Averto per `note`'
translations_gpt:
---

{% include menu.html %}

## Problemo

Programo laboras kun valoro, kaj la valoro montriĝas negativa. Se la valoro estas sub nulo, uzu `note` por sendi averton al norma erarfluo. Uzu `say` por sendi la veran rezulton, la absolutan valoron, al norma eligo. Uzu la valoron `-3`.

## Ekzemplo

Ambaŭ linioj aperas sur la ekrano:

```
Warning: the value is negative
3
```

Se vi forĵetas norman erarfluon, restas nur la rezulto:

```
$ raku note-a-warning.raku 2>/dev/null
3
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
