---
title: Aliasi tabelon
translations_gpt:
---

{% include menu.html %}

## Problemo

Vi havas ĉi tiun tabelon:

```raku
my @original = 10, 20, 30;
```

Kreu duan nomon, `@alias`, por la _sama_ tabelo, sen kopii ĝin. Ĉi-foje, aldonu novan elementon al `@original` per `push`, kaj poste presu `@alias`. Tio montras, ke la aliaso vidas ankaŭ ŝanĝojn de strukturo, ne nur de valoroj.

## Ekzemplo

La programo presas:

```
[10 20 30 40]
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
