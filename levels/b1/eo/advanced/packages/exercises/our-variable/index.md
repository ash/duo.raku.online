---
title: Variablo per our
translations_gpt:
---

{% include menu.html %}

## Problemo

Nur `our` faras nomon videbla ekster ĝia pako, dum `my` tenas ĝin privata. Kreu pakon `Config` kun `our`-variablo `$port`, kiu havas la valoron `8080`. En la sama pako, **ankaŭ** aldonu `my`-variablon `$secret`, kiu havas la valoron `42`. De ekstere, presu `$Config::port`. Poste presu, ĉu `$Config::secret` estas difinita. Ĝi ne devus esti, ĉar `my`-variablo ne estas parto de la nomspaco.

## Ekzemplo

La programo presas:

```
8080
False
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
