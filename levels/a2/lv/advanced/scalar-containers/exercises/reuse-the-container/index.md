---
title: Tipizēts vai netipizēts
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Deklarējiet divus skalārus mainīgos blakus. Pirmais ir `$untyped`. Tam nav tipa. Otrais ir `$typed`. Tam ir tips `Int`. Izmetiet abus ar `dd`, kamēr tie vēl ir tukši. Tad piešķiriet katram no tiem `42`. Izmetiet abus vēlreiz. Uzmanīgi aplūkojiet izvadi. `dd` apraksta abus konteinerus dažādi.

## Piemērs

Programma izdrukā šo standarta kļūdu plūsmā:

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
