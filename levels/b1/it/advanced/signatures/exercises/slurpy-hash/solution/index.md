---
title: 'Solution: Argomenti nominati slurpy'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
sub describe($name, *%opts) {
    my $details = %opts.sort.map({ "{.key}={.value}" }).join(', ');
    "$name: $details";
}

say describe('Anna', colour => 'red', size => 5);
```

🦋 Puoi trovare il codice sorgente nel file [slurpy-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/signatures/slurpy-hash.raku).

## Output

```
Anna: colour=red, size=5
```

## Commenti

1. Il parametro posizionale fisso `$name` riceve per primo il suo valore. Poi lo slurpy `*%opts` raccoglie in un hash tutti gli argomenti nominati rimanenti.

1. `%opts.sort` mette in ordine le coppie per chiave, quindi l'output è sempre lo stesso: `colour` viene prima di `size`. Il `.map` trasforma ogni coppia in una stringa `key=value` con `.key` e `.value`. Poi `.join(', ')` unisce le stringhe.

1. La stringa finale contiene i valori di `$name` e del `$details` completo. Questo dà `Anna: colour=red, size=5`.

{% include nav.html %}
