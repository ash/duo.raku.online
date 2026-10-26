---
title: Metaoperadores zip
translations_gpt:
---

{% include menu.html %}

El meta-operador zip `Z` toma dos listas, o más. Junta sus elementos por posición:

```raku
say (1, 2, 3) Z (4, 5, 6); # ((1 4) (2 5) (3 6))
```

El resultado es una lista de grupos. El primer grupo tiene el primer elemento de cada lista. El segundo grupo tiene el segundo elemento de cada lista, y así sucesivamente.

También hay una forma más inteligente. Puedes usar `Z` con un operador. Entonces el operador trabaja con cada par. Por ejemplo, `Z+` suma los elementos de las mismas posiciones:

```raku
say (1, 2, 3) Z+ (10, 20, 30); # (11 22 33)
```

Aquí, el meta-operador zip trabaja con el operador `+`. Calcula `1 + 10`, `2 + 20` y `3 + 30`. De la misma forma, `Z*` multiplica los elementos de las mismas posiciones:

```raku
say (1, 2, 3) Z* (10, 20, 30); # (10 40 90)
```

Y `Z~` une las cadenas de las mismas posiciones:

```raku
say <a b c> Z~ <1 2 3>; # (a1 b2 c3)
```

{% include nav.html %}
