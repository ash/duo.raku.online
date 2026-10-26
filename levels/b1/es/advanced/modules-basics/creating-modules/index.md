---
title: Crear módulos
translations_gpt:
---

{% include menu.html %}

Cuando los programas crecen, es útil dividirlos en piezas reutilizables. Un _módulo_ es una unidad de código en su propio archivo. Otros programas pueden cargarlo y usarlo.

Un archivo de módulo tiene la extensión `.rakumod`. Empieza con `unit module`, que le da su nombre al módulo. Las subrutinas de dentro son privadas por defecto. Para compartir una con el código que usa el módulo, márcala con el trait `is export`.

Aquí tienes un módulo en un archivo llamado `Greeting.rakumod`:

```raku
unit module Greeting;

sub hello($name) is export {
    return "Hello, $name!";
}
```

La subrutina `hello` tiene `is export`, así que cualquier programa que use el módulo puede verla. Sin `is export`, una subrutina seguiría siendo privada dentro del módulo.

Un módulo también puede compartir datos con variables `our`. Otro código puede acceder a ellas a través del nombre del módulo. Para añadir un número de versión a `Greeting`, basta con una línea más en el archivo:

```raku
our $version = '1.0';
```

Cuando esta línea está en `Greeting.rakumod`, el valor está disponible como `$Greeting::version`. Esto funciona en cualquier lugar donde se cargue el módulo.

Los siguientes temas muestran [cómo un programa carga un módulo así](/es/advanced/modules-basics/using-modules). También explican qué obtiene exactamente el programa de él.

{% include nav.html %}
