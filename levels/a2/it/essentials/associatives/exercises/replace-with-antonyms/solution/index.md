---
title: 'Solution: Sostituire con contrari'
---

{% include menu.html %}

Prima prendiamo il contenuto del file [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Lo copiamo nel file della soluzione [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku). Poi un ciclo passa sugli argomenti di input. Il ciclo cerca ogni parola nel dizionario. Se la parola c'è, il ciclo prende il suo antonimo. Altrimenti il programma usa la parola originale.

## Codice

Ecco la soluzione. Mostra solo una parte del dizionario.

```raku
my %dictionary =
    'above' => 'below',
    'absent' => 'present',
    'achieve' => 'fail',
    # . . .
    'wrong' => 'right',
    'young' => 'old'    
;

for @*ARGS -> $word {
    say %dictionary{$word} // $word;
}
```

🦋 Trova il programma nel file [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku).

## Output

```console
$ raku exercises/associatives/replace-with-antonyms.raku early morning
late
evening

$ raku exercises/associatives/replace-with-antonyms.raku big soft drive
small
hard
drive
```

## Commenti

1. L'operatore `//` è l'[operatore defined-or](/it/essentials/scalar-variables/defined-or-operator). Restituisce il primo operando che è definito.
1. Tutte le chiavi dell'hash sono parole. Sembrano identificatori. Quindi non servono virgolette intorno a loro. Puoi anche scrivere l'hash così:

```raku
my %dictionary =
    above => 'below',
    absent => 'present',
    achieve => 'fail',
    # . . .
    wrong => 'right',
    young => 'old'    
;
```

{% include nav.html %}
