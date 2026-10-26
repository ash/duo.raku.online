---
title: 'Solution: Solo interi'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my Int $cars;

$cars = 250.7.Int;
say $cars;
say $cars.WHAT;
```

🦋 Potete trovare il codice sorgente nel file [integers-only.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/integers-only.raku).

## Output

```
250
(Int)
```

## Commenti

1. Il vincolo di tipo `Int` in `my Int $cars` è una regola per il contenitore. Il contenitore non accetta valori che non sono interi. Non potete assegnare `250.7` direttamente. Questo valore è un `Rat`. Raku dà un errore durante la compilazione, prima che il programma parta.

1. Il programma chiama `.Int` sul valore razionale `250.7`. Questo lo converte nell'intero `250`. Il metodo toglie solo la parte dopo il punto decimale. Il nuovo valore va bene per il contenitore. Notate che questo non è lo stesso che arrotondare.

1. Lo pseudo-metodo `.WHAT` mostra il tipo del valore salvato. È `Int`.

{% include nav.html %}
