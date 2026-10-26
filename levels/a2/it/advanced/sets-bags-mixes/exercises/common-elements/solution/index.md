---
title: 'Solution: Elementi comuni'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $a = set(<apple banana cherry>);
my $b = set(<banana cherry date>);

my $common = $a ∩ $b;
say $common.elems;
say 'apple' ∈ $common;
```

🦋 Puoi trovare il codice sorgente nel file [common-elements.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/common-elements.raku).

## Output

```
2
False
```

## Commenti

1. Anche l'intersezione `$a ∩ $b` è un set. Qui è `{banana, cherry}`. Quindi ha `2` elementi. Se vuoi l'ASCII, scrivi `(&)` al posto di `∩`.

1. L'intersezione è un set. Quindi `∈` può controllare se un valore c'è. `apple` è solo nel primo set. Quindi non è nell'intersezione. Il test restituisce `False`.

{% include nav.html %}
