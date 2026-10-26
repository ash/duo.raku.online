---
title: 'Solution: Solo interi'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione del compito.

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

1. Con il vincolo di tipo `Int` in `my Int $cars`, il contenitore rifiuta tutti i valori non interi. Assegnare direttamente `250.7`, un `Rat`, darebbe un errore in fase di compilazione.

1. Chiamare `.Int` sul valore razionale `250.7` lo converte nell'intero `250`. Toglie semplicemente la parte frazionaria. Il nuovo valore va bene per il contenitore. Non confondete questo con l'arrotondamento.

1. Lo pseudo-metodo `.WHAT` mostra che il valore nel contenitore ha il tipo `Int`.

{% include nav.html %}
