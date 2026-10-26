---
title: 'Solution: Volcar la estructura de datos'
---

{% include menu.html %}

Aquí tienes una posible solución para la tarea.

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

1. `dd @data` imprime el contenido del arreglo en una forma similar a código. Esta salida va al flujo de error estándar.

1. El método `.raku` devuelve la misma representación como cadena. Luego esta cadena se pone en un mensaje normal, con código entre llaves. Después `say` imprime el mensaje en la salida estándar.

1. Aquí las dos líneas se ven iguales, pero pasan por flujos de salida diferentes. La primera viene de `dd` y va al error estándar. La segunda viene de `say` y va a la salida estándar. Compara lo siguiente:

```console
$ raku t.raku > /dev/null
["Raku", [1, 2, 3], :key("value")]

$ raku t.raku 2&> /dev/null
Structure: ["Raku", [1, 2, 3], :key("value")]
```

{% include nav.html %}
