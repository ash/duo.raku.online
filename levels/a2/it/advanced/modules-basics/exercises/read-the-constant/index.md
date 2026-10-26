---
title: Leggere la costante
translations_gpt: Esercizio 'Leggere la costante'
---

{% include menu.html %}

## Problema

Ecco un modulo nel file `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Scrivi un programma. Il programma carica questo modulo con `need`, non con `use`. Poi stampa il valore di `$pi`. Ricorda: `need` non importa i nomi. Quindi arrivi alla variabile attraverso il nome del modulo.

## Esempio

```console
$ raku -I. read-pi.raku
3.14
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
