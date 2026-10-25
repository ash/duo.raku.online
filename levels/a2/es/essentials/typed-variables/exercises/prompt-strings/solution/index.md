---
title: 'Solution: Examinar el resultado de `prompt` — Cadenas'
---

{% include menu.html %}

## Código

Aquí está el programa completo. Hace el trabajo. Imprime la cadena que escribes y su tipo.

```raku
my $name = prompt '¿Cuál es tu nombre? ';
say $name;
say $name.WHAT;
```

🦋 Puedes encontrar el código fuente en el archivo [prompt-strings.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/prompt-strings.raku).

## Ejecuciones de prueba

Ejecuta el programa dos o tres veces. Escribe diferentes nombres. El programa imprime otra vez tu entrada. También te dice que la variable contiene una cadena. En otras palabras, es un objeto del tipo `Str`.

```console
$ raku exercises/data-types/prompt-strings.raku
¿Cuál es tu nombre? Andrey
Andrey
(Str)
```

Ahora ejecuta el programa otra vez. Escribe unos espacios en lugar de un nombre. Luego presiona Enter.

```console
$ raku exercises/data-types/prompt-strings.raku
¿Cuál es tu nombre?    

(Str)
```

No vemos la salida. Pero vemos el tipo de la variable. Sigue siendo `Str`.

{% include nav.html %}
