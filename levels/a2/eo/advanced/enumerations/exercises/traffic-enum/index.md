---
title: Trafiklumo
translations_gpt:
---

{% include menu.html %}

## Problemo

Difinu enumeracion `Light` kun la konstantoj `red`, `amber` kaj `green`. Tenu ilin en ĉi tiu ordo. Deklaru variablon kun la enumeracio kiel tipo: `my Light $current`. Metu ĝin al `red`. Presu la lumon kaj la nombron malantaŭ ĝi. Uzu la formon `red is 0`.

Poste **ŝanĝu la lumon dufoje**. Unue, metu `$current` al `amber`. Poste metu ĝin al `green`. Post ĉiu ŝanĝo, presu ĝin same. Do la lumo iras `red` → `amber` → `green`.

Eble vi pensas, ke `$current++` iras al la sekva lumo per si mem. Provu tion kaj vidu, kio okazas.

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
