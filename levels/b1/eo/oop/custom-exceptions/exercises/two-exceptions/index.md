---
title: Du esceptotipoj
translations_gpt:
---

{% include menu.html %}

## Problemo

Difinu du proprajn esceptoklasojn, `TooSmall` kaj `TooBig`. Ĉiu el ili heredas de `Exception`. Iliaj metodoj `message` redonas `too small` kaj `too big`, en tiu ordo.

Iru tra la du tipoj. Por ĉiu, ĵetu escepton de tiu tipo ene de ĝia propra bloko. Uzu fazeron `CATCH` kun branĉo `when` por ĉiu tipo. Ĝi presas `small` por `TooSmall` kaj `big` por `TooBig`. Tiel vi povas vidi, ke ambaŭ branĉoj estas uzataj.

## Ekzemplo

La programo presas:

```
small
big
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
