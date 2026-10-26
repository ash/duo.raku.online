---
title: Búsqueda en cadenas
---

{% include menu.html %}

Algunos métodos te dicen qué hay dentro de una cadena.

El método `contains` comprueba si una cadena está dentro de otra cadena. Puede estar en cualquier lugar:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

El método `starts-with` comprueba el principio de una cadena. El método `ends-with` comprueba el final:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

¿Necesitas la posición exacta de una parte de una cadena? Entonces usa `index`. Devuelve la posición de la primera coincidencia. Cuenta desde cero:

```raku
say 'Raku'.index('k'); # 2
```

A veces `index` no encuentra la parte. Entonces devuelve `Nil`, no un número:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
