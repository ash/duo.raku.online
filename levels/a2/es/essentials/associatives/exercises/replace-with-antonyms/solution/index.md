---
title: 'Solution: Reemplazar con antónimos'
---

{% include menu.html %}

Primero, tomamos el contenido del archivo [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Lo copiamos en el archivo de la solución [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku). Después, un bucle recorre los argumentos de entrada. El bucle busca cada palabra en el diccionario. Si la palabra está ahí, el bucle toma su antónimo. Si no está, el programa usa la palabra original.

## Código

Aquí está la solución. Muestra solo una parte del diccionario.

```raku
my %dictionary =
    'above' => 'below',
    'absent' => 'present',
    'achieve' => 'fail',
    # . . .
    'wrong' => 'right',
    'young' => 'old'    
;

for @*ARGS -> $word {
    say %dictionary{$word} // $word;
}
```

🦋 Encuentra el programa en el archivo [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku).

## Salida

```console
$ raku exercises/associatives/replace-with-antonyms.raku early morning
late
evening

$ raku exercises/associatives/replace-with-antonyms.raku big soft drive
small
hard
drive
```

## Comentarios

1. El operador `//` es el [operador definido-o](/es/essentials/scalar-variables/defined-or-operator). Devuelve el primer operando que está definido.
1. Todas las claves del hash son palabras. Parecen identificadores. Por eso no necesitas ponerlas entre comillas. También puedes escribir el hash así:

```raku
my %dictionary =
    above => 'below',
    absent => 'present',
    achieve => 'fail',
    # . . .
    wrong => 'right',
    young => 'old'    
;
```

{% include nav.html %}
