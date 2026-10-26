---
title: Búsqueda en cadenas
---

{% include menu.html %}

Varios métodos te dicen qué contiene una cadena.

El método `contains` comprueba si una cadena está en cualquier parte dentro de otra:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

Los métodos `starts-with` y `ends-with` comprueban cómo empieza y cómo termina una cadena:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

Para encontrar la posición exacta de una subcadena, usa `index`. Devuelve la posición de la primera coincidencia, contando desde cero:

```raku
say 'Raku'.index('k'); # 2
```

Si `index` no encuentra la subcadena, devuelve `Nil` en lugar de un número:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
