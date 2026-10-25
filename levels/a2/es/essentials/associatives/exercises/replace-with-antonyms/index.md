---
title: Reemplazar con antónimos
---

{% include menu.html %}

## Problema

Escribe un programa. Toma palabras de la línea de comandos. Cambia cada palabra por su antónimo. Un antónimo es una palabra con el significado contrario. Algunas palabras no están en el diccionario. No cambies esas palabras. Imprímelas tal como están.

Guarda el diccionario de antónimos en un hash. Escribe el hash directamente en el código. Para ayudarte, preparamos una lista de unos 200 pares. Puedes copiarla y pegarla en tu programa: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Cada par aparece dos veces en la lista, una en cada dirección. Por ejemplo:

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

Haz el programa lo más simple que puedas. Imprime cada palabra en su propia línea.

## Ejemplo

Ejecuta el programa y dale algunas palabras. Al menos algunas palabras deben estar en el diccionario.

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
