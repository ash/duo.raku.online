---
title: Valores y claves
translations_gpt:
---

{% include menu.html %}

Cada constante de un enum tiene un nombre y también un número. El método `.value` devuelve el número, y `.key` devuelve el nombre como cadena de texto:

```raku
enum Colour <red green blue>;

say green.value; # 1
say green.key;   # green
```

No tienes que usar los números automáticos desde cero. Para elegir los valores tú mismo, escribe las constantes como pares:

```raku
enum Day (Mon => 1, Tue => 2, Wed => 3, Thu => 4, Fri => 5);

say Tue.value; # 2
say Fri.value; # 5
```

Aquí, la semana laboral empieza en uno en lugar de cero.

El propio tipo enum también puede listar todas sus constantes. Su método `.enums` devuelve un mapa que une cada nombre con su valor:

```raku
enum Colour <red green blue>;

say Colour.enums;       # Map.new((blue => 2, green => 1, red => 0))
say Colour.enums.elems; # 3
```

Estos tres métodos, `.value`, `.key` y `.enums`, te permiten moverte con libertad. Puedes ir de una constante a su número y volver de un número a los datos. También puedes trabajar con todo el conjunto. Por eso los enums son útiles para cosas como menús, estados y tablas de búsqueda.

{% include nav.html %}
