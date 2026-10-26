---
title: Tipita aŭ netipita
translations_gpt:
---

{% include menu.html %}

## Problemo

Deklaru du skalarajn variablojn unu apud la alia. La unua estas `$untyped`. Ĝi ne havas tipon. La dua estas `$typed`. Ĝi havas la tipon `Int`. Elĵetu ambaŭ per `dd`, dum ili ankoraŭ estas malplenaj. Poste atribuu `42` al ĉiu el ili. Elĵetu ambaŭ denove. Rigardu atente la eligon. `dd` priskribas la du ujojn en malsamaj manieroj.

## Ekzemplo

La programo presas ĉi tion al la norma erarfluo:

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
