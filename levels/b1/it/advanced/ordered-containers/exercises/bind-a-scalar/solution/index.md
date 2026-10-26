---
title: 'Solution: Legare uno scalare'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione del compito.

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

1. Il binding con `:=` non fa una copia. Fa di `$bound` un altro nome per lo stesso contenitore di `$source`. Quindi la modifica di `$source` è visibile tramite `$bound`, che stampa `9`.

1. La normale assegnazione con `=` copia il valore in un contenitore separato. Quindi la modifica successiva non cambia `$copy`, che stampa ancora `1`.

1. Lo scopo è proprio vedere i due uno accanto all'altro. `:=` condivide un contenitore, mentre `=` fa una copia del valore.

{% include nav.html %}
