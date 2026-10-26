---
title: Datkalkulado
translations_gpt:
---

{% include menu.html %}

Vi povas fari aritmetikon kun datoj. Tiam multaj ĉiutagaj kalkuloj estas facilaj.

Vi povas aldoni entjeron al dato. Tiam la dato moviĝas antaŭen je tiom da tagoj. Vi ricevas novan daton. Se necese, Raku ankaŭ ŝanĝas la monaton kaj la jaron:

```raku
say Date.new(2026, 6, 27) + 7; # 2026-07-04
```

Vi ankaŭ povas subtrahi unu daton de alia. Vi ricevas la nombron de tagoj inter ili:

```raku
say Date.new(2026, 7, 4) - Date.new(2026, 6, 27); # 7
```

Por pli grandaj paŝoj, uzu la metodojn `later` kaj `earlier`. Ili prenas nomitajn argumentojn, kiel `:days`, `:months` aŭ `:years`:

```raku
say Date.new(2026, 6, 27).later(:days(10));    # 2026-07-07
say Date.new(2026, 6, 27).earlier(:months(2)); # 2026-04-27
```

Ĉi tiuj metodoj ĉiam donas la ĝustan daton. Ili funkcias ankaŭ, kiam nova monato aŭ jaro komenciĝas. Do vi neniam devas scii, kiom da tagoj havas monato.

{% include nav.html %}
