---
title: Leggere la costante
translations_gpt: Esercizio 'Leggere la costante'
---

{% include menu.html %}

## Problema

Hai un modulo in un file `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Scrivi un programma che carica questo modulo con `need`, non con `use`. Deve stampare il valore di `$pi`. Ricorda che `need` non importa i nomi. Quindi raggiungi la variabile attraverso il nome del modulo.

## Esempio

```console
$ raku -I. read-pi.raku
3.14
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
