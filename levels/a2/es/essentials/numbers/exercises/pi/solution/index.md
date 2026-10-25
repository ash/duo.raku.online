---
title: 'Solution: El valor de π'
---

{% include menu.html %}

Es fácil imprimir el valor de π.

## Código

```raku
say π;
```

🦋 Puedes encontrar el código completo en el archivo [pi.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/pi.raku).

## Salida

Ejecuta el programa y observa lo que imprime:

```console
$ raku exercises/numbers/pi.raku
3.141592653589793
```

## Comentarios

Raku tiene una constante incorporada `π`. Así que el programa es muy simple. Pero hay otras formas de hacer lo mismo:

```raku
    π.say;
```

O:

```raku
    pi.say;
```

O:

```raku
    say pi;
```

{% include nav.html %}
