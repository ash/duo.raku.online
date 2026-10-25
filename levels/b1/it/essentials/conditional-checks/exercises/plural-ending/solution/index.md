---
title: 'Solution: Plurale finale'
---

{% include menu.html %}

Il programma deve controllare se il numero è maggiore di uno. In questo caso, la parola deve essere nella forma plurale.

## Codice

```raku
my $n = prompt 'Quanti file copiare? ';
my $ending = $n == 1 ?? '' !! 's';
say "$n file{$ending} copiati.";
```

🦋 Trova il programma nel file [plural-ending.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/conditional-checks/plural-ending.raku).

## Output

Esegui il programma due o più volte. Prova l'input `1` e anche un altro numero intero positivo:

```console
$ raku exercises/conditional-checks/plural-ending.raku
Quanti file copiare? 10
10 files copiati.

$ raku exercises/conditional-checks/plural-ending.raku
Quanti file copiare? 1
1 file copiato.
```

## Commento

Forse scrivi spesso per errore un solo `?` invece del doppio `??`. Puoi anche scrivere i due punti `:` invece di `!!`, o fare tutti e due gli errori.

{% include nav.html %}
