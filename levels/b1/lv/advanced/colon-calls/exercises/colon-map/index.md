---
title: Map ar kolu
translations_gpt:
---

{% include menu.html %}

## Uzdevums

Šī izteiksme dubulto skaitļus no `1` līdz `10`. Pēc tam tā patur tikai tos, kas ir lielāki par `10`:

```raku
(1..10).map(* * 2).grep(* > 10).say;
```

Pārrakstiet kodu tā, lai `grep` izsaukums lietotu kola formu, nevis iekavas. Pārējo ķēdi nemainiet. Atcerieties, ka kola forma ņem visu atlikušo instrukcijas daļu. Tāpēc to var lietot tikai ķēdes pēdējais izsaukums.

## Piemērs

Programma izdrukā:

```
(12 14 16 18 20)
```

## Risinājums

✅ [Skatīt risinājumu](solution)

{% include nav.html %}
