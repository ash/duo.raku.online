---
title: 'Solution: Elementi comuni'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. L'intersezione `$a ∩ $b` è a sua volta un set, qui `{banana, cherry}`. Quindi ha `2` elementi. Se preferisci l'ASCII, scrivi `(&)` al posto di `∩`.

1. L'intersezione è un set, quindi `∈` ti può dire se un valore ne fa parte. `apple` è solo nel primo set, quindi non è nell'intersezione. Il test restituisce `False`.

{% include nav.html %}
