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

Esegui il programma e prova alcuni casi diversi:

* Un numero tondo di tre cifre, come 120;
* Un multiplo di 100, per esempio, 400;
* Un numero maggiore di 10 ma minore di 100;
* Un numero minore di 10.

Per il numero 234, l'output del programma è così:

```console
$ raku exercises/numbers/tens.raku
Inserisci un numero intero positivo: 234
3
```

## Commenti

Questa soluzione combina di nuovo il modulo `%` e la divisione intera `div`.

Nota lo spazio prima della parentesi aperta. Deve esserci, altrimenti avrai un errore di sintassi. Torneremo su [questa caratteristica](/it/essentials/more-on-functions/mind-the-space) di Raku nella sezione sulle funzioni. Per ora, scrivi il codice come mostrato sopra. Oppure puoi mettere un'altra coppia di parentesi intorno all'argomento della funzione. In questo caso, non serve lo spazio:

```raku
    say(($n % 100) div 10);
```

{% include nav.html %}
