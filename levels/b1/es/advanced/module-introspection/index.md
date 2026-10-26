---
title: Introspección de módulos
---

{% include menu.html %}

El nombre de un módulo crea un _paquete_. Un paquete es un espacio de nombres que guarda los nombres definidos en el módulo. Antes, en [la sección sobre contenedores](/es/advanced/containers), conociste `WHO`. Devuelve el `Stash`, o tabla de símbolos, de un paquete. La introspección de módulos aprovecha eso.

Los ejemplos de abajo usan el módulo `Greeting` que construimos en los temas anteriores. Tiene una subrutina exportada y una variable compartida `our`:

```raku
unit module Greeting;

our $version = '1.0';

sub hello($name) is export {
    return "Hello, $name!";
}
```

Escribes el paquete de un módulo con `::` al final. Al añadir `.keys`, obtienes la lista de los nombres que contiene:

```raku
use Greeting;

say Greeting::.keys.sort; # ($version EXPORT)
```

El módulo `Greeting` de los temas anteriores define una variable `our`, `$version`. Así que su paquete contiene este nombre, junto con su sigilo. A su lado está `EXPORT`, que puede parecer sorprendente. Es un paquete que Raku crea automáticamente. Guarda todo lo que un módulo marca con `is export`, como la subrutina `hello`. Así que un nombre exportado _no_ aparece directamente en el paquete. Vive dentro del sub-paquete `EXPORT`. Las claves vuelven sin un orden fijo. Por eso el ejemplo las ordena, para que el resultado sea siempre el mismo.

También puedes buscar un nombre en el paquete. Solo tienes que usar el nombre como clave. Esto da el mismo valor que el nombre calificado `$Greeting::version`:

```raku
use Greeting;

say Greeting::{'$version'}; # 1.0
```

## Listar lo que exporta un módulo

Los nombres exportados viven en realidad en el paquete `EXPORT` que viste arriba. Así que puedes listarlos si miras un nivel más adentro. Las exportaciones sin etiqueta van al grupo `DEFAULT` (consulta [Etiquetas de exportación](/es/advanced/modules-basics/export-tags)). Las `.keys` de este grupo son las rutinas exportadas:

```raku
use Greeting;

say Greeting::EXPORT::DEFAULT::.keys.sort; # (&hello)
```

Cada clave es un nombre exportado con su sigilo. Aquí es la única subrutina, `&hello`, con el `&` que marca una rutina. De esta forma, puedes descubrir qué ofrece un módulo a sus usuarios. No necesitas leer su código fuente. Solo pregúntale a su paquete `EXPORT::DEFAULT` qué contiene.

Mirar dentro de un paquete así es útil en dos casos. Puede que quieras descubrir qué ofrece un módulo. O puede que quieras llegar a sus nombres mientras el programa se ejecuta. Así no tienes que escribir cada uno en el código fuente.

{% include nav.html %}
