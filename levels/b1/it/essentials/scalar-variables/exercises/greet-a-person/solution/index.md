---
title: 'Solution: Salutare una persona'
---

{% include menu.html %}

Ecco una possibile soluzione al compito.

## Codice

```raku
my $name = prompt 'Qual è il tuo nome? ';
say 'Ciao, ', $name, '!';
```

🦋 Puoi trovare il codice sorgente nel file [greet-a-person.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/scalar-variables/greet-a-person.raku).

## Output

Esegui il programma e inserisci un nome quando vedi il prompt:

```console
$ raku exercises/scalar-variables/greet-a-person.raku 
Qual è il tuo nome? Inge
Ciao, Inge!
```

## Commenti

1. Dopo il prompt, l'utente inserisce una stringa. Il programma conserva questa stringa in una variabile scalare, `$name`. Usi la variabile nella lista che passi alla routine `say`. Così il nome appare nel messaggio.

1. Un modo migliore per risolvere questo problema è usare l'interpolazione delle stringhe. Ci torneremo presto.

{% include nav.html %}
