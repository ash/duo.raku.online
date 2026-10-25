---
title: 'Solution: Conversione dell''input dell''utente in un numero'
---

{% include menu.html %}

Il programma può essere semplice come questo:

## Codice

```raku
my Int $n = prompt 'Inserisci un numero: ';
say $n;
```

🦋 Puoi trovare il codice sorgente nel file [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Esempio

Eseguilo e inserisci un intero, che può essere positivo o negativo:

```console
$ raku exercises/typed-variables/input-number.raku
Inserisci un numero: -42
-42
```

## Commenti

Come abbiamo [visto](/it/essentials/typed-variables/allomorphs), qui `prompt` restituisce un valore `IntStr`. Puoi assegnarlo a una variabile `Int` senza nessuna coercizione.

Nota però che alcune stringhe non si possono convertire in un intero. Se inserisci una stringa così, il programma si ferma con un'eccezione.

{% include nav.html %}
