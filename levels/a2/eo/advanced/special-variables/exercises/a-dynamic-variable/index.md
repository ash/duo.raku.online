---
title: Dinamika variablo
translations_gpt:
---

{% include menu.html %}

## Problemo

Dinamika variablo havas la tvigilon `*`. Raku serĉas ĝin tra la voka stako, ne per leksika amplekso. Do subrutino povas vidi malsamajn valorojn. La valoro dependas de tio, kiu vokas la subrutinon. Tiel bloko povas igi la kodon, kiun ĝi vokas, ruliĝi kiel iu alia.

1. Deklaru dinamikan variablon `$*user` kun la valoro `'guest'`.
2. Skribu subrutinon `whoami`. Ĝi presas `running as ` kaj poste la nunan `$*user`, ekzemple, `running as guest`. Ĝi ne havas parametrojn. Ĝi devas legi `$*user` rekte.
3. Voku `whoami` unufoje ĉe la supra nivelo. Ĝi montras `guest`.
4. Poste faru blokon. En ĝi, denove deklaru `$*user` kiel `'admin'`. Voku la *saman* `whoami` tie. Nun ĝi montras `admin`.

## Ekzemplo

La programo presas:

```
running as guest
running as admin
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
