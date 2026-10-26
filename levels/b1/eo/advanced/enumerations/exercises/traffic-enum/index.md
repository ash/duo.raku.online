---
title: Trafiklumo
translations_gpt:
---

{% include menu.html %}

## Problemo

Difinu enumeracion `Light` kun la konstantoj `red`, `amber` kaj `green`, en ĉi tiu ordo. Deklaru variablon kun la enumeracio kiel tipo, `my Light $current`, kaj metu ĝin al `red`. Presu la lumon kaj la nombron malantaŭ ĝi, jene: `red is 0`.

Poste **ŝanĝu la lumon kelkfoje**. Atribuu `amber` al `$current`, kaj poste `green`. Post ĉiu ŝanĝo, presu ĝin same. Do vi iras `red` → `amber` → `green`.

Vi eble pensas, ke `$current++` moviĝas al la sekva lumo per si mem. Provu tion kaj vidu, kio okazas.

## Ekzemplo

La programo presas:

```
red is 0
amber is 1
green is 2
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
