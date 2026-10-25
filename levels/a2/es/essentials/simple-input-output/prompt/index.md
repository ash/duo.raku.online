---
title: Entrada con `prompt`
---

{% include menu.html %}

`prompt` es lo contrario de `say`. Espera al usuario. El usuario escribe algo y presiona Enter. Después, `prompt` envía la entrada al programa como una cadena. Puedes tomar el resultado de `prompt` y pasarlo a `say`. Entonces el programa repite lo que escribe el usuario. Vamos a escribir un programa así:

```raku
say prompt;
```

Ejecuta este programa. Quizás no entiendas qué pasa. El programa solo espera alguna entrada. Por eso es bueno imprimir antes un mensaje. Así el programa es más fácil de usar. No necesitas un `say` aparte para esto. Puedes pasar el mensaje a `prompt`:

```raku
prompt '¿Qué idioma vas a aprender? '
```

Esta sección termina pronto. Pero primero, vamos a juntar todas las piezas. El nuevo programa pregunta qué quiere el usuario. Después imprime una frase con el texto del usuario.

```raku
say 'Vas a aprender ', prompt '¿Qué idioma vas a aprender? ';
```

Si escribes `Raku`, el programa imprime esta frase:

    Vas a aprender Raku

Bien, ahora podemos hablar con el programa. ¡Y podemos hacer que el programa nos hable!

Ten en cuenta que `say` debe conocer las cadenas antes de imprimirlas. Por eso Raku ejecuta `prompt` primero. Así, el diálogo va en el orden correcto:

```console
$ raku t.raku 
¿Qué idioma vas a aprender? Raku
Vas a aprender Raku
```

{% include nav.html %}
