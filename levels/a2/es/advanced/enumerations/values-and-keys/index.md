---
title: Valores y claves
translations_gpt:
---

{% include menu.html %}

Cada constante de un enum tiene un nombre y un número. El método `.value` da el número. El método `.key` da el nombre como cadena de texto:

```raku
enum Colour <red green blue>;

say green.value; # 1
say green.key;   # green
```

Raku numera las constantes desde cero. Pero puedes cambiar esto. Escribe las constantes como pares. Entonces eliges los valores tú mismo:

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Tue.value; # 2
say Fri.value; # 5
```

Aquí, la semana de trabajo empieza en uno, no en cero.

El tipo enum también puede listar todas sus constantes. El método `.enums` devuelve un mapa. Un mapa es como un hash. En este mapa, cada nombre tiene su valor:

```raku
enum Colour <red green blue>;

say Colour.enums;       # Map.new((blue => 2, green => 1, red => 0))
say Colour.enums.elems; # 3
```

Con `.value`, `.key` y `.enums`, puedes moverte con libertad. Puedes ir de una constante a su número. Puedes volver de un número a los datos. Y puedes recorrer todo el conjunto. Por eso los enums son útiles, por ejemplo, para menús, estados y tablas de búsqueda.

{% include nav.html %}
