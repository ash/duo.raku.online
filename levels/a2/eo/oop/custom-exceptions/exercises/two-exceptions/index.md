---
title: Du esceptotipoj
translations_gpt:
---

{% include menu.html %}

## Problemo

Faru du proprajn esceptoklasojn, `TooSmall` kaj `TooBig`. Ili estas klasoj por viaj propraj eraroj. Ĉiu klaso heredas de `Exception`. La metodo `message` de `TooSmall` redonas `too small`. La metodo `message` de `TooBig` redonas `too big`.

Skribu buklon tra la du tipoj. Por ĉiu tipo, ĵetu escepton de ĉi tiu tipo. Ĉiu escepto havas sian propran blokon. Aldonu fazeron `CATCH` kun branĉo `when` por ĉiu tipo. Por `TooSmall`, ĝi presas `small`. Por `TooBig`, ĝi presas `big`. Tiel vi vidas, ke ambaŭ branĉoj ruliĝas.

## Ekzemplo

La programo presas:

```
small
big
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
