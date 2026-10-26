---
title: Englutaj nomitaj argumentoj
translations_gpt:
---

{% include menu.html %}

## Problemo

Skribu subrutinon `describe`. Ĝia unua parametro estas nomo. Ĉi tiu nomo estas pozicia kaj deviga. Post ĝi, engluta hako `*%opts` kolektas ajnan nombron da nomitaj argumentoj. La subrutino redonas ĉenon kiel ĉi tiu: `name: key=value, key=value, ...`. La ĉeno listigas ĉiun opcion. La ŝlosiloj estas en alfabeta ordo.

Voku ĝin jene: `describe('Anna', colour => 'red', size => 5)`. Presu la rezulton.

## Ekzemplo

La programo presas:

```
Anna: colour=red, size=5
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
