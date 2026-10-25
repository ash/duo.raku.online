---
title: 'Solution: Factorial recursivo'
---

{% include menu.html %}

El factorial es un ejercicio muy útil, porque hay muchas formas de resolverlo. Esta vez usamos recursión, lo que significa que la función se llama a sí misma.

## Código 1

Aquí está el código de la solución. Nota que necesitas comprobar una condición para detener la recursión. Si no, continuará para siempre.

```raku
sub factorial($n) {
    if $n < 2 {
        return 1;
    }
    else {
        return $n * factorial($n - 1);
    }
}

say factorial(10);
```

🦋 Encuentra el programa en el archivo [recursive-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial.raku).

## Código 2

En código como este, la forma postfija de `if` suele ser mejor. Te permite retornar de la función enseguida. Esto hace el código más limpio y elimina mucha indentación y puntuación.

```raku
sub factorial($n) {
    return 1 if $n < 2;
    return $n * factorial($n - 1);
}

say factorial(10);
```

🦋 Encuentra el programa actualizado en el archivo [recursive-factorial-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/recursive-factorial-2.raku).

## Ejemplo

Ejecuta el programa y comprueba el resultado. Por cierto, ¿sabías que seis semanas tienen exactamente _10!_ segundos?

```console
$ raku exercises/functions/recursive-factorial.raku
3628800
```

{% include nav.html %}
