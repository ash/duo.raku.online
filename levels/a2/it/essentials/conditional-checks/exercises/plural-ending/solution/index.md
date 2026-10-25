---
title: 'Solution: Plurale finale'
---

{% include menu.html %}

Il programma deve controllare il numero dell'utente. Se è più grande di uno, la parola deve essere al plurale.

## Codice

```raku
my $n = prompt 'Quanti file copiare? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n file{$ending} copiati.";
```

🦋 Trova il programma nel file [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Output

Esegui il programma almeno due volte. Provalo con l'input `1`. Poi prova un altro numero intero più grande di zero:

```console
$ raku exercises/conditional-checks/plural-ending.raku
Quanti file copiare? 10
10 files copiati.

$ raku exercises/conditional-checks/plural-ending.raku
Quanti file copiare? 1
1 file copiato.
```

## Commento

Qui puoi fare spesso un errore. Puoi scrivere un solo `?` invece del doppio `??`. Oppure puoi scrivere i due punti `:` invece di `!!`. Oppure puoi fare tutte e due le cose.

{% include nav.html %}
