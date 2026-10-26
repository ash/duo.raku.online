---
title: 'Solution: Argomenti nominati slurpy'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. Prima il parametro posizionale fisso `$name` riceve il suo valore. Poi lo slurpy `*%opts` raccoglie tutti gli altri argomenti nominati. Li mette in un hash.

1. `%opts.sort` ordina le coppie per chiave. Così l'output è sempre lo stesso: `colour` viene prima di `size`. `.map` crea una stringa `key=value` da ogni coppia. Per questo usa `.key` e `.value`. Poi `.join(', ')` unisce le stringhe.

1. L'ultima stringa contiene i valori di `$name` e `$details`. Abbiamo costruito `$details` prima. Il risultato è `Anna: colour=red, size=5`.

{% include nav.html %}
