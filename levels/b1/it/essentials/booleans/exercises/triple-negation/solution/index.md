---
title: 'Solution: Tripla negazione'
---

{% include menu.html %}

Il programma del compito non si compila, quindi ha bisogno di una piccola correzione. Ecco una versione corretta che funziona (con uno spazio aggiunto tra `!` e `!!`):

## Codice

```raku
my $value = False;
say ! !!$value;
```

🦋 Puoi trovare il codice completo nel file [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Output

Come probabilmente ti aspettavi, il programma stampa il valore booleano opposto:

```console
$ raku triple-negation.raku
True
```

## Commenti

Stranamente, il programma con tre punti esclamativi non si è compilato:

```console
$ raku triple-negation.raku
===SORRY!=== Error while compiling /Users/ash/raku-course/exercises/booleans/triple-negation.raku
Two terms in a row
at /Users/ash/raku-course/exercises/booleans/triple-negation.raku:2
------> say !!!⏏$value;
    expecting any of:
        infix
        infix stopper
        postfix
        statement end
        statement modifier
        statement modifier loop
```

Uno spazio in più risolve questo problema. Ma non cadere in un'altra trappola. Guarda il seguente programma:

```raku
my $value = False;
say !!! $value;
```

Questo programma si compila, ma si ferma con il seguente messaggio:

```console
$ raku triple-negation.raku
False
    in block <unit> at exercises/booleans/triple-negation.raku line 2
```

Questo succede perché `!!!` è un operatore speciale. Segna una parte del codice come codice stub, cioè codice non finito. Se il programma arriva a questo punto, si ferma e stampa il messaggio. Nel nostro caso, il messaggio era il valore attuale della variabile `$value`. Guarda 📖 [la documentazione](https://docs.raku.org/routine/!!!) per maggiori dettagli.

{% include nav.html %}
