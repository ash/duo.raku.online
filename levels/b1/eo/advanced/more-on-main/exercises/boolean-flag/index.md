---
title: Komandlinia flago
translations_gpt:
---

{% include menu.html %}

## Problemo

Nomita `Bool`-parametro de `MAIN` fariĝas **flago**, kiu estas aŭ ŝaltita, aŭ malŝaltita. Se vi skribas `--flag`, ĝi fariĝas `True`, kaj se vi ne skribas ĝin, ĝi konservas sian defaŭltan valoron. Skribu programon, kies `MAIN` prenas `Bool :$shout = False`. Ĝi presu `HELLO`, kiam la flago estas ŝaltita, kaj `hello`, kiam ĝi ne estas.

## Ekzemplo

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Solvo

✅ [Vidu la solvon](solution)

{% include nav.html %}
