---
title: 'Solution: Salutare una persona'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $name = prompt 'Qual è il tuo nome? ';
say 'Ciao, ', $name, '!';
```

🦋 Puoi trovare il codice sorgente nel file [greet-a-person.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku).

## Output

Esegui il programma. Ti chiede il tuo nome. Inserisci un nome:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
Qual è il tuo nome? Inge
Ciao, Inge!
```

## Commenti

1. Il programma chiede un nome. L'utente inserisce una stringa. La variabile scalare `$name` conserva questa stringa. Poi il programma passa una lista di valori a `say`. La variabile fa parte di questa lista. Così il nome appare nel messaggio.

1. C'è un modo migliore per risolvere questo problema. Usa l'interpolazione delle stringhe. Torniamo presto su questo problema.

{% include nav.html %}
