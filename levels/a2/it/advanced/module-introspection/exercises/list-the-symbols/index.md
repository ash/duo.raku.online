---
title: Elencare i simboli
translations_gpt:
---

{% include menu.html %}

## Problema

Ecco un modulo nel file `Circle.rakumod`. Ha due variabili `our`:

```raku
unit module Circle;

our $pi = 3.14;
our $tau = 6.28;
```

Scrivi un programma. Il programma usa il modulo. Prima stampa il numero di nomi nel package del modulo. Poi stampa i nomi. Devono essere in ordine alfabetico.

## Esempio

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
