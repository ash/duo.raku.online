---
title: Definir un enum
translations_gpt:
---

{% include menu.html %}

Para declarar un enum, escribe la palabra clave `enum`, un nombre y la lista de nombres de constantes:

```raku
enum Colour <red green blue>;
```

Ahora hay un tipo nuevo, `Colour`, con tres constantes: `red`, `green` y `blue`. Puedes usar cada constante directamente por su nombre:

```raku
say red;   # red
say green; # green
```

Detrás de cada nombre hay un número. Raku pone estos números automáticamente, desde cero, en el orden de tu lista. Así, `red` es `0`, `green` es `1` y `blue` es `2`. Como los valores tienen un orden, puedes comparar las constantes:

```raku
say red < blue; # True
```

Puedes darle a una variable el enum como tipo. Entonces solo acepta esas constantes:

```raku
my Colour $c = green;
say $c; # green
```

El nombre de una constante puede ser igual a otro nombre de tu programa. Entonces siempre puedes llegar a la constante a través del nombre del enum y `::`:

```raku
say Colour::red; # red
```

Un enum le da a un grupo de constantes relacionadas un nombre y un tipo. El código que las usa es mucho más claro que el código con números sueltos. El siguiente tema trata sobre [los números detrás de los nombres](/es/advanced/enumerations/values-and-keys).

{% include nav.html %}
