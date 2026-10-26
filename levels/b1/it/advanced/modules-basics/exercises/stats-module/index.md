---
title: Usare un modulo di statistiche
translations_gpt: Esercizio 'Usare un modulo di statistiche'
---

{% include menu.html %}

## Problema

Hai un modulo `Stats.rakumod` che esporta due subroutine, `total` e `mean`. La subroutine `mean` si basa su `total`:

```raku
unit module Stats;

sub total(@numbers) is export {
    [+] @numbers
}

sub mean(@numbers) is export {
    total(@numbers) / @numbers.elems
}
```

Scrivi un programma separato che usa questo modulo. Per la lista `10, 20, 30, 40`, deve stampare sia il totale sia la media.

## Esempio

Se lo esegui con il modulo nel percorso di ricerca, il programma stampa:

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
