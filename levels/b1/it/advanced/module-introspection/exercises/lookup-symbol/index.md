---
title: Cercare un simbolo
translations_gpt:
---

{% include menu.html %}

## Problema

Oltre a elencare i nomi di un package, puoi raggiungere un singolo nome. Per farlo, usa il nome come chiave nello stash del package. Così il nome non deve essere fisso nel codice. Ecco un modulo, `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Scrivi un programma separato che carica il modulo e stampa il valore di `$pi`. Deve trovare `$pi` nello stash con `Circle::{'$pi'}`. Non deve usare il nome qualificato `$Circle::pi`.

## Esempio

Se lo esegui con il modulo nel percorso di ricerca, il programma stampa:

```console
$ raku -I. lookup.raku
3.14
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
