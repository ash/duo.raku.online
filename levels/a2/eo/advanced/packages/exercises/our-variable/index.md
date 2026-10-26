---
title: Variablo per our
translations_gpt:
---

{% include menu.html %}

## Problemo

Nur `our` faras nomon videbla ekster ĝia pako. `my` tenas la nomon privata. Kreu pakon `Config`. Ĝi havas `our`-variablon `$port` kun la valoro `8080`. Ĝi **ankaŭ** havas `my`-variablon `$secret` kun la valoro `42`. De ekster la pako, presu `$Config::port`. Poste presu, ĉu `$Config::secret` estas difinita. Ĝi ne devus esti difinita. `my`-variablo ne estas parto de la nomspaco.

## Ekzemplo

La programo presas:

```
8080
False
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
