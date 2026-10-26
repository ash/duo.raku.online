---
title: 'Solution: Elementos comunes'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $a = set(<apple banana cherry>);
my $b = set(<banana cherry date>);

my $common = $a ∩ $b;
say $common.elems;
say 'apple' ∈ $common;
```

🦋 Encuentra el programa en el archivo [common-elements.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/common-elements.raku).

## Salida

```
2
False
```

## Comentarios

1. La intersección `$a ∩ $b` es a su vez un set, aquí `{banana, cherry}`. Así que tiene `2` elementos. Si prefieres ASCII, escribe `(&)` en lugar de `∩`.

1. La intersección es un set, así que `∈` puede decirte si un valor está en ella. `apple` solo está en el primer set, así que no está en la intersección. La prueba devuelve `False`.

{% include nav.html %}
