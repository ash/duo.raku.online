---
title: 'Solución: Guarde y lea'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
spurt 'number.txt', "42\n";

my $n = slurp('number.txt').trim.Int;
say $n * 2;
```

🦋 Puedes encontrar el código fuente en el archivo [save-and-read.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/files/save-and-read.raku).

## Salida

```
84
```

## Comentarios

1. `spurt` crea el archivo y escribe en él la cadena. `slurp` vuelve a leer todo el archivo en una cadena. Juntas, hacen los dos trabajos. Guardan datos y los vuelven a cargar.

1. `slurp` devuelve texto: `"42\n"`. Así que usamos `trim` para quitar el salto de línea del final. Después llamamos a `.Int` para convertir el texto en un número. Ahora podemos hacer cuentas con él. El resultado de `42 * 2` es `84`.

1. Pero el programa también funciona sin `.trim.Int`.

{% include nav.html %}
