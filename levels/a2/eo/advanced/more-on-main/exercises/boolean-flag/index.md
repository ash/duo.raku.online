---
title: Komandlinia flago
translations_gpt:
---

{% include menu.html %}

## Problemo

Nomita parametro de `MAIN` povas havi la tipon `Bool`. Tiam ĝi fariĝas **flago**. Flago estas ŝaltita aŭ malŝaltita. Se vi skribas `--flag`, ĝi estas `True`. Se vi ne skribas ĝin, ĝi konservas sian defaŭltan valoron. Skribu programon kun `MAIN`. Ĝi prenas `Bool :$shout = False`. Kun la flago, la programo presas `HELLO`. Sen la flago, ĝi presas `hello`.

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
