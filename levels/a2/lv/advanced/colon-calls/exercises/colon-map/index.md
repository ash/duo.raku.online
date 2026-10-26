---
title: Map ar kolu
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Šeit ir izteiksme. Tā dubulto skaitļus no `1` līdz `10`. Tad tā patur tikai skaitļus, kas ir lielāki par `10`:

```raku
(1..10).map(* * 2).grep(* > 10).say;
```

Izmainiet kodu. Metodes `grep` izsaukumam jālieto kola forma, nevis iekavas. Pārējo ķēdi nemainiet. Atcerieties: kola forma ņem atlikušo instrukcijas daļu. Tāpēc to var lietot tikai ķēdes pēdējais izsaukums.

## Piemērs

Programma izdrukā:

```
(12 14 16 18 20)
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
