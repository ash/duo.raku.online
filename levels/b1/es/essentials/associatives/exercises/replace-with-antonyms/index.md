---
title: Reemplazar con antónimos
---

{% include menu.html %}

## Problema

Escribe un programa que cambie todas las palabras de la línea de comandos por sus antónimos. Los antónimos son palabras con el significado contrario. Si una palabra no está en el diccionario, imprímela sin cambios.

Guarda el diccionario de antónimos en un hash, directamente en el código del programa. Para hacerlo más fácil, aquí tienes una lista ya preparada de unos 200 pares: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Puedes copiarla y pegarla directamente en tu programa. Todos los pares están en las dos direcciones, por ejemplo:

```raku
my %dictionary =
    'above' => 'below',
    'absent' => 'present',
    # . . .
    'below' => 'above',
    # . . .
    'present' => 'absent',
    # . . .
;
```

Haz el programa lo más simple posible e imprime las palabras una por línea.

## Ejemplo

Ejecuta el programa con algunas palabras como argumentos. Comprueba que al menos algunas de ellas están en el diccionario.

```console
$ raku replace-with-antonyms.raku a quiet teacher wants to buy some salt
a
noisy
student
wants
to
sell
some
sugar
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
