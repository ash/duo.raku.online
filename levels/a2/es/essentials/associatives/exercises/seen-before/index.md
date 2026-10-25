---
title: ¿Visto antes?
---

{% include menu.html %}

## Problema

Escribe un programa con un bucle. El bucle hace estas cosas:

1. Pedir una palabra al usuario.
2. Si el usuario ya escribió esta palabra una vez, imprimir `¡Visto!`.
3. Si el usuario la escribió más de una vez, imprimir `¡Visto 2 veces!`, y así sucesivamente.
3. Repetir el bucle.

## Ejemplo

Aquí tienes un ejemplo de uso del programa:

```console
$ raku seen-before.raku
Palabra: Yo
Palabra: nunca
Palabra: vi
Palabra: una
Palabra: vi
¡Visto!
Palabra: eso
Palabra: vi
¡Visto 2 veces!
Verdadero
Palabra: como
Palabra: eso
¡Visto!
Palabra: vi
¡Visto 3 veces!
Verdadero
Palabra: aserrado
Palabra: ^C
```

Para detener el programa, presiona `Ctrl+C`.

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
