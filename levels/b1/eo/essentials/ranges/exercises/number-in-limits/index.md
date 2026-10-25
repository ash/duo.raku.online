---
title: Se la nombro estas ene de la limoj
---

{% include menu.html %}

## Problemo

Skribu programon, kiu petas la uzanton enigi tri nombrojn: `$begin`, `$end` kaj `$n`. Ĝi presas `True`, se `$n` estas en la intervalo `[$begin, $end)`, aŭ `False`, se ne. Ĉi tiu intervalo inkluzivas `$begin`, sed ekskludas `$end`.

Vi povas supozi, ke la enigitaj nombroj plenumas la kondiĉon `$begin < $end + 1`. Sed ne aldonu kodon por kontroli ĝin.

## Ekzemplo

Sube vi povas vidi eblan eligon de la programo por ambaŭ kazoj:

```console
$ raku number-in-limits.raku
De (inkluzive): 10
Ĝis (ekskluzive): 20
Kio estas la nombro? 15
True

$ raku number-in-limits.raku
De (inkluzive): 10
Ĝis (ekskluzive): 20
Kio estas la nombro? 30
False
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
