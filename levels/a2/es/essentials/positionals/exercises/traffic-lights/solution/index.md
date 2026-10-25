---
title: 'Solution: Semáforos'
---

{% include menu.html %}

Esta es la idea de la solución. Un array guarda los cuatro estados de los semáforos. Hacemos ‘circular el índice’ de este array:

```raku
my @lights = <yellow red yellow green>;
```

Al principio, cuenta los segundos desde el inicio. Usa este número directamente como índice en el array. Después, el número se hace mayor que 3. Entonces vuelves al inicio del array. El operador módulo `%` hace esto. La longitud del array es `@lights.elems`. Pero aquí no necesitas llamar al método `elems`. El array es un operando de `%`. Así que Raku convierte el nombre del array en un número. Esta conversión da el número de elementos.

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

Ejecuta el programa. Luego prueba también otros valores en el programa.

```console
$ raku exercises/positionals/traffic-lights.raku
green
yellow
red
```

{% include nav.html %}
