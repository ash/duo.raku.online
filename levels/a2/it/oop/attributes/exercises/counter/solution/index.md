---
title: 'Soluzione: Un contatore'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
class Counter {
    has $.count is rw = 0;
}

my $c = Counter.new;
say $c.count;

$c.count++ for ^5;

say $c.count;
```

🦋 Trova il programma nel file [counter.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/attributes/counter.raku).

## Output

```
0
5
```

## Commenti

1. L'attributo ha `is rw`. Così il suo accessore restituisce un contenitore in cui puoi scrivere. `= 0` dà all'attributo un valore iniziale. Il primo `say` controlla un nuovo contatore. Parte davvero dal valore predefinito, `0`.

1. Puoi scrivere nell'accessore. Così `++` funziona come ti aspetti. Aggiunge 1 al conteggio.

{% include nav.html %}
