---
title: Usar módulos
translations_gpt:
---

{% include menu.html %}

Para usar un módulo, cárgalo con la instrucción `use`. Después de eso, los nombres que exporta el módulo están disponibles. Puedes usarlos como si los hubieras escrito tú mismo.

Así es como un programa usa el archivo `Greeting.rakumod` del tema anterior:

```raku
use Greeting;

say hello('Anna');
```

`hello` está marcada con `is export`, así que la instrucción `use` la pone a disposición. El programa la llama directamente:

```
Hello, Anna!
```

Raku solo puede encontrar el módulo si está en la ruta de búsqueda de módulos. Puede que tu archivo de módulo esté en el mismo directorio que tu programa. En ese caso, dile a Raku que busque ahí con la opción `-I.`. El punto significa "el directorio actual":

```console
$ raku -I. program.raku
Hello, Anna!
```

Raku encuentra los módulos instalados automáticamente. Los veremos más adelante, en [Instalar módulos desde la web](/es/advanced/installing-modules). Así que solo necesitas la opción `-I` para los módulos que están junto a tu propio programa.

{% include nav.html %}
