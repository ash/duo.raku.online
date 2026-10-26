---
title: 'Solution: Begin per primo'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my $compiled = BEGIN { 2 + 3 };

say $compiled;
```

🦋 Puoi trovare il codice sorgente nel file [begin-first.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/begin-first.raku).

## Output

```
5
```

## Commenti

1. `BEGIN { 2 + 3 }` viene eseguito durante la compilazione e dà `5`. Quando usi un blocco `BEGIN` come espressione, restituisce il suo valore. Qui questo valore viene assegnato a `$compiled`.

1. Il calcolo avviene una sola volta, in fase di compilazione. Quando il programma è in esecuzione, `$compiled` contiene semplicemente la costante `5`. Così `BEGIN` può calcolare dei valori in anticipo. Non serve solo a stampare presto.

{% include nav.html %}
