---
title: Definir un enum
translations_gpt:
---

{% include menu.html %}

Para declarar un enum, escribe la palabra clave `enum`. Luego escribe un nombre y la lista de nombres de las constantes:

```raku
enum Colour <red green blue>;
```

Esto crea un tipo nuevo, `Colour`. También crea tres constantes: `red`, `green` y `blue`. Puedes usar una constante solo con su nombre:

```raku
say red;   # red
say green; # green
```

Cada nombre tiene un número detrás. Raku pone los números por ti. Empieza desde cero y sigue el orden de tu lista. Así, `red` es `0`, `green` es `1`, y `blue` es `2`. Los valores tienen un orden. Por eso puedes comparar las constantes:

```raku
say red < blue; # True
```

Una variable puede tener el enum como tipo. Entonces la variable acepta solo estas constantes:

```raku
my Colour $c = green;
say $c; # green
```

Una constante y otra cosa pueden tener el mismo nombre. Entonces escribe el nombre del enum y `::` antes de la constante. Esto siempre funciona:

```raku
say Colour::red; # red
```

Un enum junta constantes relacionadas. Les da un nombre y un tipo. El código con estas constantes es mucho más claro que el código con solo números. El siguiente tema trata sobre [los números detrás de los nombres](/es/advanced/enumerations/values-and-keys).

{% include nav.html %}
