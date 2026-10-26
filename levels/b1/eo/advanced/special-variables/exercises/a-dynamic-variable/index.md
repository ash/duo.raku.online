---
title: Dinamika variablo
translations_gpt:
---

{% include menu.html %}

## Problemo

Dinamika variablo estas skribita kun la tvigilo `*`. Raku trovas ĝin, serĉante eksteren tra la voka stako, ne per leksika amplekso. Do la valoro, kiun subrutino vidas, dependas de tio, kiu vokis ĝin. Tio permesas al bloko ruli la kodon, kiun ĝi vokas, kun alia identeco.

1. Deklaru dinamikan variablon `$*user` kun la valoro `'guest'`.
2. Skribu subrutinon `whoami`, kiu presas `running as ` kaj poste la nunan `$*user` (ekzemple, `running as guest`). Ĝi ne havas parametrojn, do ĝi devas legi `$*user` rekte.
3. Voku `whoami` unufoje ĉe la supra nivelo. Ĝi montras `guest`.
4. Poste faru blokon, kiu denove deklaras `$*user` kiel `'admin'`. Ene de ĝi, voku la *saman* `whoami` denove. Nun ĝi montras `admin`.

## Ekzemplo

La programo presas:

```
running as guest
running as admin
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
