---
title: Volcar la estructura de datos
---

{% include menu.html %}

## Problema

Tienes la siguiente estructura de datos anidada:

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');
```

Haz dos cosas con ella:

1. Usa `dd` para imprimir un volcado de `@data` para desarrolladores.
2. Imprime la misma representación como cadena, empezando con el texto `Structure: `.

## Ejemplo

El programa imprime dos líneas similares:

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Solución

✅ [Ve la solución](solution)

{% include nav.html %}
