---
title: Se la nombro estas ene de la limoj
---

{% include menu.html %}

## Problemo

Skribu programon. Ĝi petas de la uzanto tri nombrojn: `$begin`, `$end` kaj `$n`. Poste ĝi kontrolas, ĉu `$n` estas en la intervalo `[$begin, $end)`. Ĉi tiu intervalo enhavas `$begin`, sed ne `$end`. La programo presas `True` aŭ `False`.

La nombroj plenumas ĉi tiun kondiĉon: `$begin < $end + 1`. Vi povas esti certa pri tio. Ne aldonu kodon por kontroli ĝin.

## Ekzemplo

Jen ebla eligo de la programo en ambaŭ kazoj:

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
