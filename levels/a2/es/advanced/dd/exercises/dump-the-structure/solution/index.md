---
title: 'Solution: Volcar la estructura de datos'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my @data = 'Raku', [1, 2, 3], (key => 'value');

dd @data;
say "Structure: { @data.raku }";
```

🦋 Puedes encontrar el código fuente en el archivo [dump-the-structure.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-the-structure.raku).

## Salida

```
["Raku", [1, 2, 3], :key("value")]
Structure: ["Raku", [1, 2, 3], :key("value")]
```

## Comentarios

1. `dd @data` imprime lo que hay en el arreglo. Lo imprime en una forma parecida al código. Esta salida va al flujo de error estándar.

1. El método `.raku` devuelve la misma forma como cadena. El programa pone esta cadena en un mensaje normal. Para eso, ejecuta código dentro de la cadena. Después `say` imprime el mensaje en la salida estándar.

1. Aquí, las dos líneas se ven iguales. Pero van a flujos de salida diferentes. La primera línea viene de `dd` y va al error estándar. La segunda línea viene de `say` y va a la salida estándar. Compara estas dos ejecuciones:

```console
$ raku t.raku > /dev/null
["Raku", [1, 2, 3], :key("value")]

$ raku t.raku 2&> /dev/null
Structure: ["Raku", [1, 2, 3], :key("value")]
```

{% include nav.html %}
