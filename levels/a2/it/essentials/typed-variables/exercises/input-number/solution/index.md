---
title: 'Solution: Conversione dell''input dell''utente in un numero'
---

{% include menu.html %}

Il programma può essere molto semplice:

## Codice

```raku
my Int $n = prompt 'Inserisci un numero: ';
say $n;
```

🦋 Puoi trovare il codice sorgente nel file [input-number.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/input-number.raku).

## Esempio

Eseguilo e inserisci un intero. Può essere positivo o negativo:

```console
$ raku exercises/typed-variables/input-number.raku
Inserisci un numero: -42
-42
```

## Commenti

Abbiamo [già visto](/it/essentials/typed-variables/allomorphs) che `prompt` restituisce un valore `IntStr`. Puoi assegnare questo valore a una variabile `Int`. Non devi convertirlo.

Ma fai attenzione. A volte inserisci una stringa che Raku non può convertire in un intero. Allora il programma si ferma con un'eccezione.

{% include nav.html %}
