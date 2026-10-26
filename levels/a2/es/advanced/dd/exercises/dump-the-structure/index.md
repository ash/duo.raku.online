---
title: Volcar la estructura de datos
---

{% include menu.html %}

## Problema

Aquí tienes una estructura de datos anidada. Tiene datos dentro de otros datos:

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');
```

Haz dos cosas con ella:

1. Vuelca `@data` con `dd`, en una forma para programadores.
2. Imprime la misma forma como cadena. Pon el texto `Structure: ` delante.

## Ejemplo

El programa imprime dos líneas. Son muy parecidas:

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Solución

✅ [Ve la solución](solution)

{% include nav.html %}
