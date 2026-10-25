---
title: 'Solution: Tripla negazione'
---

{% include menu.html %}

Il programma del compito non si compila. Ha bisogno di una piccola correzione. Ecco una versione corretta che funziona. Ha uno spazio tra `!` e `!!`:

## Codice

```raku
my $value = False;
say ! !!$value;
```

🦋 Puoi trovare il codice completo nel file [triple-negation.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/booleans/triple-negation.raku).

## Output

Il programma stampa il valore booleano opposto. Probabilmente te lo aspettavi:

```console
$ raku triple-negation.raku
True
```

## Commenti

Il programma con tre punti esclamativi non si compila. Non ce lo aspettavamo:

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

Uno spazio in più risolve questo problema. Ma fai attenzione. Non fare un altro errore. Guarda questo programma:

```raku
my $value = False;
say !!! $value;
```

Questo programma si compila. Ma poi si ferma con questo messaggio:

```console
$ raku triple-negation.raku
False
    in block <unit> at exercises/booleans/triple-negation.raku line 2
```

Perché succede? `!!!` è un operatore speciale. Segna una parte del codice come codice stub. Il codice stub è codice non ancora pronto. Se il programma arriva in questo punto, si ferma. Stampa anche un messaggio. Qui il messaggio è il valore attuale della variabile `$value`. Puoi leggere di più nella 📖 [documentazione](https://docs.raku.org/routine/!!!).

{% include nav.html %}
