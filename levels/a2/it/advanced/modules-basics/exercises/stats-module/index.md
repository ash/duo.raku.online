---
title: Usare un modulo di statistiche
translations_gpt: Esercizio 'Usare un modulo di statistiche'
---

{% include menu.html %}

## Problema

Ecco un modulo, `Stats.rakumod`. Esporta due subroutine: `total` e `mean`. La subroutine `mean` usa `total`:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Scrivi un programma separato. Il programma usa questo modulo. Prende la lista `10, 20, 30, 40`. Stampa il totale e la media, cioè il valore medio, di questa lista.

## Esempio

Esegui il programma con il modulo nel percorso di ricerca. Ecco cosa stampa:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
