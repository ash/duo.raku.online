---
title: 'Solution: Reemplazar con antónimos'
---

{% include menu.html %}

El archivo de la solución, [replace-with-antonyms.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/replace-with-antonyms.raku), empieza con una copia de [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Después, un bucle recorre los argumentos de entrada. Intenta encontrar cada palabra en el diccionario. Si puede, toma el antónimo. Si esa palabra no está en el diccionario, se usa la palabra original.

## Código

La solución está abajo, pero aquí solo se muestra una parte del diccionario.

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
1. Todas las claves del hash son palabras que parecen identificadores. Por eso no necesitas ponerlas entre comillas. Esto significa que también puedes crear el hash así:

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
