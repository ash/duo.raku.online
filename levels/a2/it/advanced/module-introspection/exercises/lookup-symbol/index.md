---
title: Cercare un simbolo
translations_gpt:
---

{% include menu.html %}

## Problema

Puoi elencare i nomi di un package. Puoi anche prendere un nome in un altro modo. Usa il nome come chiave nello stash del package. Lo stash è la sua tabella dei nomi. Con una chiave, il programma può scegliere il nome mentre è in esecuzione. Ecco un modulo, `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Scrivi un programma separato. Il programma carica il modulo. Poi stampa il valore di `$pi`. Deve trovare `$pi` nello stash con `Circle::{'$pi'}`. Non usare il nome completo `$Circle::pi`.

## Esempio

Esegui il programma con il modulo nel percorso di ricerca. Ecco cosa stampa:

```console
$ raku -I. lookup.raku
3.14
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
