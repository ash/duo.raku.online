---
title: Un MAIN tipizzato
translations_gpt:
---

{% include menu.html %}

## Problema

Raku controlla anche il tipo di un parametro di `MAIN` prima di eseguire il corpo. Scrivi un programma il cui `MAIN` prende un solo `Int $n` e stampa `$n` moltiplicato per due. Se l'argomento non è un intero valido, la firma non corrisponde. Allora Raku stampa invece il messaggio di utilizzo, così hai il controllo gratis.

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
