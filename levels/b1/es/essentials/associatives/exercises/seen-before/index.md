---
title: ¿Visto antes?
---

{% include menu.html %}

## Problema

Escribe un programa con un bucle que haga lo siguiente:

1. Pedir al usuario que escriba una palabra.
2. Si el programa ya ha visto la palabra una vez, imprimir `¡Visto!`.
3. Si ha visto la palabra más de una vez, imprimir `¡Visto 2 veces!` y así sucesivamente.
3. Repetir el bucle.

## Ejemplo

Así puede verse el trabajo con el programa:

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
