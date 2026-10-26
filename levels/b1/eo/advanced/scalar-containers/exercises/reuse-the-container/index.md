---
title: Tipita aŭ netipita
translations_gpt:
---

{% include menu.html %}

## Problemo

Deklaru du skalarajn variablojn unu apud la alia: `$untyped`, kiu ne havas tipon, kaj `$typed`, kiu havas la tipon `Int`. Elĵetu ambaŭ per `dd`, dum ili ankoraŭ estas malplenaj. Poste atribuu `42` al ĉiu kaj elĵetu ambaŭ denove. Rigardu atente, kiel malsame `dd` priskribas la du ujojn.

## Ekzemplo

La programo presas jenon al la norma erarfluo:

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
