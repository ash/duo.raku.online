---
title: 'Soluzione: Un contatore'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. L'attributo è dichiarato con `is rw`, quindi il suo accessore restituisce un contenitore scrivibile. `= 0` gli dà un valore di partenza. Il primo `say` mostra che un nuovo contatore parte davvero da questo valore predefinito, `0`.

1. L'accessore è scrivibile, quindi `++` può aumentarlo. Questo funziona come ti aspetteresti.

{% include nav.html %}
