---
title: Due funzioni in un modulo
translations_gpt: Esercizio 'Due funzioni in un modulo'
---

{% include menu.html %}

## Problema

Crea un modulo con il nome `Calc` nel file `Calc.rakumod`. Il modulo esporta due subroutine: `add` e `mul`. Ognuna prende due argomenti. `add` restituisce la loro somma. `mul` restituisce il loro prodotto.

Poi scrivi un programma separato. Il programma usa il modulo e stampa `add(3, 4)` e `mul(3, 4)`. Ogni risultato è su una riga diversa.

## Esempio

Esegui il programma con il modulo nel percorso di ricerca. Ecco cosa stampa:

```console
$ raku -I. calc.raku
7
12
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
