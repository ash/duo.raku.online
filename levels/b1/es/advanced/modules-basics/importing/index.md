---
title: Importar
translations_gpt:
---

{% include menu.html %}

Puedes traer un módulo a un programa de más de una forma. Las tres instrucciones `use`, `need` y `require` se diferencian en _cuándo_ cargan el módulo. También se diferencian en _qué_ ponen a disposición.

## `use`

Ya has visto `use`. Carga el módulo en tiempo de compilación e importa sus nombres exportados. Así que puedes llamarlos directamente:

```raku
use Greeting;
say hello('Anna'); # Hello, Anna!
```

## `need`

`need` también carga el módulo en tiempo de compilación. Pero _no_ importa los nombres exportados. Aun así, puedes acceder a sus variables `our` a través del nombre del módulo:

```raku
need Greeting;
say $Greeting::version; # 1.0
```

Después de `need Greeting`, Raku no reconocería un simple `hello(...)`, porque no se importó nada. Solo están disponibles los nombres calificados, como `$Greeting::version`.

## `require`

`require` carga el módulo en _tiempo de ejecución_ en lugar de en tiempo de compilación. Esto es útil cuando solo sabes en tiempo de ejecución si necesitas un módulo. Por ejemplo, su nombre puede venir de la entrada del usuario.

Como el módulo se carga en tiempo de ejecución, no se importa nada automáticamente. Para importar símbolos, escríbelos entre corchetes angulares después del nombre del módulo. Así puedes llamarlos directamente:

```raku
require Greeting <&hello>;
say hello('Anna'); # Hello, Anna!
```

En el código de cada día, `use` es lo que necesitas. `need` y `require` están ahí para los casos menos comunes.

{% include nav.html %}
