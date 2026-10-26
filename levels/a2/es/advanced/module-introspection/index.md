---
title: Introspección de módulos
---

{% include menu.html %}

El nombre de un módulo también crea un _paquete_. Un paquete es un espacio de nombres. Guarda los nombres del módulo. Antes, en [la sección sobre contenedores](/es/advanced/containers), viste `WHO`. Devuelve el `Stash` de un paquete. El `Stash` es la tabla de símbolos, o nombres, del paquete. La introspección de módulos usa esto. Con ella, un programa mira dentro de un módulo.

Los ejemplos de abajo usan el módulo `Greeting` de los temas anteriores. Tiene una subrutina que exporta. También tiene una variable compartida `our`:

```raku
unit module Greeting;

our $version = '1.0';

sub hello($name) is export {
    return "Hello, $name!";
}
```

Para obtener el paquete de un módulo, escribe `::` después de su nombre. Luego añade `.keys`. Lista los nombres del paquete:

```raku
use Greeting;

say Greeting::.keys.sort; # ($version EXPORT)
```

El módulo `Greeting` de los temas anteriores tiene una variable `our`, `$version`. Así que su paquete tiene este nombre. El nombre incluye el sigilo. A su lado, ves `EXPORT`. Esto puede ser una sorpresa. `EXPORT` también es un paquete. Raku lo crea automáticamente. El módulo marca algunas cosas con `is export`. `EXPORT` las guarda todas, por ejemplo, la subrutina `hello`. Así que un nombre exportado _no_ está directamente en el paquete. Está en `EXPORT`. Este es un paquete más pequeño dentro del paquete del módulo. Las claves no salen en un orden fijo. Así que el ejemplo las ordena. Entonces el resultado siempre es el mismo.

También puedes encontrar un nombre en el paquete. Usa el nombre como clave. Obtienes el mismo valor que con el nombre completo `$Greeting::version`:

```raku
use Greeting;

say Greeting::{'$version'}; # 1.0
```

## Listar las exportaciones de un módulo

Los nombres exportados están en realidad en el paquete `EXPORT` de arriba. Así que puedes listarlos. Solo tienes que mirar un nivel más adentro. Las exportaciones sin etiqueta van al grupo `DEFAULT`. Puedes leer sobre las etiquetas en [Etiquetas de exportación](/es/advanced/modules-basics/export-tags). Las `.keys` de `DEFAULT` son las rutinas exportadas:

```raku
use Greeting;

say Greeting::EXPORT::DEFAULT::.keys.sort; # (&hello)
```

Cada clave es un nombre exportado con su sigilo. Aquí solo hay una clave: la subrutina `&hello`. El sigilo `&` muestra que es una rutina. Así puedes saber qué da un módulo a sus usuarios. No necesitas leer su código fuente. Solo pregunta a su paquete `EXPORT::DEFAULT` qué tiene.

Mirar dentro de un paquete así es útil. Puedes saber qué tiene un módulo. También puedes llegar a sus nombres mientras el programa se ejecuta. Así no tienes que escribir cada nombre en el código.

{% include nav.html %}
