---
title: Un MAIN tipizzato
translations_gpt:
---

{% include menu.html %}

## Problema

Un parametro di `MAIN` può avere un tipo. Raku controlla anche questo tipo prima di eseguire il corpo. Scrivi un programma con `MAIN`. Prende un parametro, `Int $n`. Stampa `$n` moltiplicato per due. E se l'argomento non è un intero corretto? Allora la firma non corrisponde. Raku stampa invece il messaggio di utilizzo. Così Raku controlla l'argomento per te, e non fai nessun lavoro in più.

## Esempio

```console
$ raku typed-main.raku 5
10

$ raku typed-main.raku abc
Usage:
  typed-main.raku <n>
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
