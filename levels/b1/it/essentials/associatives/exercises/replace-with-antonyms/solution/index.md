---
title: 'Solution: Sostituire con contrari'
---

{% include menu.html %}

Il file della soluzione, [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku), comincia con una copia di [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Dopo, un ciclo passa sugli argomenti di input. Cerca ogni parola nel dizionario. Se la trova, prende l'antonimo. Se la parola non è nel dizionario, viene usata la parola originale.

## Codice

La soluzione è qui sotto, ma qui si vede solo una parte del dizionario.

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
1. Tutte le chiavi dell'hash sono parole che sembrano identificatori. Quindi non serve metterle tra virgolette. Questo vuol dire che puoi anche creare l'hash così:

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
