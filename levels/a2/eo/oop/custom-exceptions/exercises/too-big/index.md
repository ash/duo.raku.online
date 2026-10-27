---
title: Tro granda
translations_gpt:
---

{% include menu.html %}

## Problemo

Faru propran esceptoklason `TooBig`. Ĝi estas klaso por viaj propraj eraroj. Ĝi heredas de `Exception`. Ĝi havas du atributojn, `value` kaj `limit`. Ĝia metodo `message` devas redoni `Value <value> exceeds the limit of <limit>`.

Poste skribu buklon tra la valoroj `30`, `99` kaj `60`. La limo estas `50`. Ĵetu `TooBig` nur, kiam valoro estas pli granda ol la limo. Aldonu fazeron `CATCH` kun `when TooBig`. Ĝi presas la mesaĝon **kaj** duan linion. Por ĉi tiu linio, ĝi legas la atributon `limit` de la escepto rekte. La dua linio estas `Try a value up to <limit>.`. Por valoro ene de la limo, simple presu, ke ĝi estas en ordo.

Vi vidas, ke nur la malsukcesantaj nombroj ricevas escepton. La aliaj nombroj pasas sen problemo. En ambaŭ kazoj, la buklo daŭras.

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
