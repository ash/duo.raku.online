---
title: Un flag da riga di comando
translations_gpt:
---

{% include menu.html %}

## Problema

Un parametro con nome di `MAIN` può avere il tipo `Bool`. Allora diventa un **flag**. Un flag è acceso o spento. Se scrivi `--flag`, vale `True`. Se non lo scrivi, mantiene il suo valore predefinito. Scrivi un programma con `MAIN`. Prende `Bool :$shout = False`. Con il flag, il programma stampa `HELLO`. Senza il flag, stampa `hello`.

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
