---
title: 'Solution: Semáforos'
---

{% include menu.html %}

La idea de la solución es ‘circular el índice’ de un array. El array guarda los cuatro estados de los semáforos:

```raku
my @lights = <yellow red yellow green>;
```

Al principio, el número de segundos desde el inicio se usa directamente como índice. Cuando es mayor que 3, vuelves al inicio del array. El operador módulo `%` hace esto. La longitud del array es `@lights.elems`. Pero con `%` no necesitas llamar al método `elems`. El array es un operando de `%`, así que su nombre se convierte en un número. Esta conversión está pensada para dar el número de elementos.

## Código

Aquí está la solución:

```raku
my @lights = <yellow red yellow green>;

say @lights[51 % @lights];
say @lights[102 % @lights];
say @lights[305 % @lights];
```

🦋 Encuentra el programa en el archivo [traffic-lights.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/traffic-lights.raku).

## Salida

Ejecuta el programa. Prueba también otros valores en el programa.

```console
$ raku exercises/positionals/traffic-lights.raku
green
yellow
red
```

{% include nav.html %}
