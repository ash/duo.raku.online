---
title: Un flag da riga di comando
translations_gpt:
---

{% include menu.html %}

## Problema

Un parametro con nome di tipo `Bool` di `MAIN` diventa un **flag**, che è acceso o spento. Se scrivi `--flag`, vale `True`, e se non lo scrivi mantiene il suo valore predefinito. Scrivi un programma il cui `MAIN` prende `Bool :$shout = False`. Deve stampare `HELLO` quando il flag è impostato, e `hello` in caso contrario.

## Esempio

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
