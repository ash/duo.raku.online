---
title: 'Solution: Examinar el resultado de `prompt` — Cadenas'
---

{% include menu.html %}

## Código

Aquí está el programa completo. Hace el trabajo e imprime tanto la cadena introducida como su tipo.

```raku
my $name = prompt '¿Cuál es tu nombre? ';
say $name;
say $name.WHAT;
```

🦋 Puedes encontrar el código fuente en el archivo [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Ejecuciones de prueba

Ejecuta el programa un par de veces con diferentes nombres. El programa repite la entrada. También informa de que la variable contiene una cadena. En otras palabras, es un objeto del tipo `Str`.

```console
$ raku exercises/data-types/prompt-strings.raku
¿Cuál es tu nombre? Andrey
Andrey
(Str)
```

Ahora ejecuta el programa otra vez. Escribe unos espacios en lugar de un nombre y presiona Enter.

```console
$ raku exercises/data-types/prompt-strings.raku
¿Cuál es tu nombre?    

(Str)
```

No vemos la salida. Pero podemos ver que la variable sigue teniendo el tipo `Str`.

{% include nav.html %}
