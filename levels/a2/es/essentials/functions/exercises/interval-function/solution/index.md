---
title: 'Solution: Función de intervalo'
---

{% include menu.html %}

La función tiene un `if` con tres ramas. Las dos primeras ramas tienen una prueba. La prueba es `True` o `False`. La tercera rama no necesita prueba. Un número puede no pasar las dos primeras pruebas. Entonces solo queda la tercera rama.

## Código

Aquí está la solución:

```raku
sub f($x) {
    if    $x > 0  { return $x - 0.5 }
    elsif $x == 0 { return 0 }
    else          { return -$x }
}

say f(-2);
say f(0);
say f(3);
```

🦋 Encuentra el programa en el archivo [interval-function.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/interval-function.raku).

## Salida

```console
$ raku exercises/functions/interval-function.raku
2
0
2.5
```

{% include nav.html %}
