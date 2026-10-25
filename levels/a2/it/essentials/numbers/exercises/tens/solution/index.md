---
title: 'Solution: Numero di decine'
---

{% include menu.html %}

Ecco come puoi risolvere il compito.

## Codice

```raku
my $n = prompt 'Inserisci un numero intero positivo: ';

say ($n % 100) div 10;
```

🦋 Puoi trovare il codice completo nel file [tens.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/tens.raku).

## Output

Esegui il programma. Provalo con alcuni casi diversi:

* Un numero tondo con tre cifre, per esempio, 120;
* Un numero che si divide per 100 senza resto, per esempio, 400;
* Un numero più grande di 10 ma più piccolo di 100;
* Un numero minore di 10.

Per il numero 234, il programma stampa questo:

```console
$ raku exercises/numbers/tens.raku
Inserisci un numero intero positivo: 234
3
```

## Commenti

Di nuovo, questa soluzione usa insieme due operatori: il modulo `%` e la divisione intera `div`.

Guarda lo spazio prima della parentesi aperta. Deve esserci. Senza lo spazio, hai un errore di sintassi. Torniamo su [questa caratteristica](/it/essentials/more-on-functions/mind-the-space) di Raku nella sezione sulle funzioni. Per ora, scrivi il codice come lo vedi sopra. Oppure aggiungi un'altra coppia di parentesi. Mettile intorno all'argomento della funzione. Allora non ti serve lo spazio:

```raku
    say(($n % 100) div 10);
```

{% include nav.html %}
