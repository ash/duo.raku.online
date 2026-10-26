---
title: Usar módulos
translations_gpt:
---

{% include menu.html %}

Para usar un módulo, cárgalo con la instrucción `use`. Después, puedes usar los nombres que el módulo exporta. Es como si los escribieras tú mismo.

Toma el archivo `Greeting.rakumod` del tema anterior. Un programa lo usa así:

```raku
use Greeting;

say hello('Anna');
```

`hello` tiene la marca `is export`. Así que la instrucción `use` la hace disponible. El programa la llama directamente:

```
Hello, Anna!
```

Raku debe encontrar el módulo. Así que el módulo debe estar en la ruta de búsqueda de módulos. Esta ruta es la lista de lugares donde Raku busca módulos. A lo mejor el archivo del módulo está en el mismo directorio que tu programa. Entonces dile a Raku que busque ahí con la opción `-I.`. El punto significa "el directorio actual":

```console
$ raku -I. program.raku
Hello, Anna!
```

Raku encuentra los módulos instalados automáticamente. Aprendes sobre ellos más adelante, en [Instalar módulos desde la web](/es/advanced/installing-modules). Así que solo necesitas `-I` para módulos que están junto a tu programa.

{% include nav.html %}
