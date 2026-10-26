---
title: Elencare i simboli
translations_gpt:
---

{% include menu.html %}

## Problema

Hai un modulo nel file `Circle.rakumod`, che definisce due variabili `our`:

```raku
unit module Circle;

our $pi = 3.14;
our $tau = 6.28;
```

Scrivi un programma che usa il modulo. Prima stampa quanti nomi definisce il package del modulo. Poi stampa i nomi stessi in ordine alfabetico.

## Esempio

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
