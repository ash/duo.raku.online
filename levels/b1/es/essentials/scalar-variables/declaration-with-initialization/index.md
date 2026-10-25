---
title: Declaración con inicialización
---

{% include menu.html %}

A veces ya sabes el valor cuando creas una variable. Entonces puedes hacer las dos cosas en una sola instrucción, y así ahorras una línea de código:

```raku
my $name = 'Anna';
say $name;
```

## Varias variables

Para crear varias variables y asignarles valores, usa esta forma:

```raku
my ($name, $age) = 'Carl', 36;
```

{% include nav.html %}
