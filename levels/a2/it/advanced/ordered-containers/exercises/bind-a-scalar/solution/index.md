---
title: 'Solution: Legare uno scalare'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $source = 1;
my $bound := $source;
my $copy = $source;

$source = 9;
say $bound;
say $copy;
```

🦋 Puoi trovare il codice sorgente nel file [bind-a-scalar.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/bind-a-scalar.raku).

## Output

```
9
1
```

## Commenti

1. Il binding con `:=` non fa una copia. Rende `$bound` un secondo nome per il contenitore di `$source`. Così `$bound` vede il cambiamento di `$source`. Stampa `9`.

1. La normale assegnazione con `=` copia il valore in un altro contenitore. Così il cambiamento successivo non tocca `$copy`. Stampa ancora `1`.

1. Questo è lo scopo del compito. Vedi i due modi uno accanto all'altro. `:=` condivide un contenitore. `=` copia il valore.

{% include nav.html %}
