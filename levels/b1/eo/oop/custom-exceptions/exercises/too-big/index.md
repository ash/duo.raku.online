---
title: Tro granda
translations_gpt:
---

{% include menu.html %}

## Problemo

Difinu propran esceptoklason `TooBig`. Ĝi heredas de `Exception` kaj havas du atributojn, `value` kaj `limit`. Ĝia metodo `message` redonu `Value <value> exceeds the limit of <limit>`.

Poste iru tra la valoroj `30`, `99` kaj `60`, kun limo de `50`. Por ĉiu valoro, ĵetu `TooBig` nur, se la valoro estas super la limo. Uzu fazeron `CATCH` kun `when TooBig`, kiu presas la mesaĝon **kaj** duan linion. En tiu linio, ĝi legas la atributon `limit` de la escepto rekte. Ĝi presas `Try a value up to <limit>.`. Valoro ene de la limo simple raportu, ke ĝi estas en ordo.

Tio montras, ke nur la malsukcesantaj nombroj kaŭzas escepton. La aliaj nombroj pasas rekte, kaj la buklo daŭras en ambaŭ kazoj.

## Ekzemplo

La programo presas:

```
Value 30 is within the limit
Value 99 exceeds the limit of 50
Try a value up to 50.
Value 60 exceeds the limit of 50
Try a value up to 50.
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
