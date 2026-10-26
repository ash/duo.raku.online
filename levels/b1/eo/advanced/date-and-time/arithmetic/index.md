---
title: Datkalkulado
translations_gpt:
---

{% include menu.html %}

Vi povas fari aritmetikon kun datoj. Tio faras multajn ĉiutagajn kalkulojn simplaj.

Se vi aldonas entjeron al dato, ĝi moviĝas antaŭen je tiom da tagoj. La rezulto estas nova dato. Ĝia monato kaj jaro aŭtomate ŝanĝiĝas, kiam necese:

```raku
say Date.new(2026, 6, 27) + 7; # 2026-07-04
```

Se vi subtrahas unu daton de alia, vi ricevas la nombron de tagoj inter ili:

```raku
say Date.new(2026, 7, 4) - Date.new(2026, 6, 27); # 7
```

Por pli grandaj paŝoj, ekzistas la metodoj `later` kaj `earlier`. Ili akceptas nomitajn argumentojn kiel `:days`, `:months` aŭ `:years`:

```raku
say Date.new(2026, 6, 27).later(:days(10));    # 2026-07-07
say Date.new(2026, 6, 27).earlier(:months(2)); # 2026-04-27
```

Ĉi tiuj metodoj kalkulas ĝuste, kiam nova monato aŭ jaro komenciĝas. Do vi neniam devas zorgi pri tio, kiom da tagoj havas monato.

{% include nav.html %}
