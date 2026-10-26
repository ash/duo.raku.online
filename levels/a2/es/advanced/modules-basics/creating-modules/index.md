---
title: Crear módulos
translations_gpt:
---

{% include menu.html %}

Los programas crecen con el tiempo. Entonces es bueno dividirlos en piezas. Puedes usar estas piezas otra vez. Un _módulo_ es una de estas piezas de código. Está en su propio archivo. Otros programas pueden cargarlo y usarlo.

Un archivo de módulo tiene la extensión `.rakumod`. Empieza con `unit module` y el nombre del módulo. Normalmente, las subrutinas de un módulo son privadas. Solo el propio módulo puede usarlas. ¿Quieres compartir una subrutina con otro código? Márcala con el trait `is export`.

Aquí tienes un módulo en el archivo `Greeting.rakumod`:

```raku
unit module Greeting;

sub hello($name) is export {
    return "Hello, $name!";
}
```

La subrutina `hello` tiene `is export`. Así que todos los programas que usan el módulo pueden verla. Una subrutina sin `is export` sigue siendo privada. Solo el propio módulo puede usarla.

Un módulo también puede compartir datos. Para esto, usa variables `our`. Otro código puede llegar a ellas a través del nombre del módulo. Vamos a añadir un número de versión a `Greeting`. Solo necesitamos una línea más en el archivo:

```raku
our $version = '1.0';
```

Ahora `Greeting.rakumod` tiene esta línea. Así que el valor está disponible como `$Greeting::version`. Esto funciona en todos los sitios donde cargas el módulo.

Los siguientes temas muestran [cómo un programa carga un módulo así](/es/advanced/modules-basics/using-modules). También muestran qué obtiene el programa de él.

{% include nav.html %}
