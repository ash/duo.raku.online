---
title: Importar
translations_gpt:
---

{% include menu.html %}

Hay varias formas de traer un módulo a un programa. Raku tiene tres instrucciones para esto: `use`, `need` y `require`. Son diferentes en dos cosas. La primera es _cuándo_ cargan el módulo. La segunda es _qué_ dan al programa.

## `use`

Ya conoces `use`. Carga el módulo en tiempo de compilación, antes de ejecutar el programa. También importa los nombres exportados del módulo. Así que puedes llamarlos directamente:

```raku
use Greeting;
say hello('Anna'); # Hello, Anna!
```

## `need`

`need` también carga el módulo en tiempo de compilación. Pero _no_ importa los nombres exportados. Aun así, puedes llegar a las variables `our` del módulo. Para esto, usa el nombre del módulo:

```raku
need Greeting;
say $Greeting::version; # 1.0
```

Después de `need Greeting`, un simple `hello(...)` no funciona. No se importó nada. Solo están disponibles los nombres completos, con el nombre del módulo dentro. Un ejemplo es `$Greeting::version`.

## `require`

`require` carga el módulo en _tiempo de ejecución_, no en tiempo de compilación. Esto es útil en algunos casos. A veces no sabes si necesitas un módulo. Solo lo sabes cuando el programa se ejecuta. Por ejemplo, el usuario puede escribir el nombre del módulo.

El módulo se carga en tiempo de ejecución. Así que no se importa nada automáticamente. Después del nombre del módulo, escribe los nombres que quieres. Ponlos entre corchetes angulares. Entonces Raku los importa. Así que puedes llamarlos directamente:

```raku
require Greeting <&hello>;
say hello('Anna'); # Hello, Anna!
```

Normalmente, `use` es la opción correcta. `need` y `require` son para casos menos comunes.

{% include nav.html %}
