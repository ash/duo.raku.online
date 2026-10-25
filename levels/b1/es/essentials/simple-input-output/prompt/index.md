---
title: Entrada con `prompt`
---

{% include menu.html %}

Lo contrario de `say` es `prompt`. Espera a que el usuario escriba algo y presione Enter. Luego envía la entrada al programa como una cadena. Puedes tomar el resultado de `prompt` y pasarlo a `say`. Entonces el programa vuelve a imprimir lo que escribe el usuario. Vamos a escribir un programa así:

```raku
say prompt;
```

Si ejecutas este programa, quizás te confunda. El programa solo espera alguna entrada. Por eso es bueno imprimir un mensaje de prompt para el usuario. Esto hace que el programa sea más fácil de usar. No necesitas un `say` aparte para esto. Solo pasa el mensaje a `prompt`:

```raku
prompt '¿Qué idioma vas a aprender? '
```

Antes de terminar esta sección, vamos a juntar todas las piezas. Crearemos un programa que pregunta qué quiere el usuario. Luego imprime una frase con el texto que el usuario escribió.

```raku
say 'Vas a aprender ', prompt '¿Qué idioma vas a aprender? ';
```

Si escribiste `Raku`, el programa imprime la siguiente frase:

    Vas a aprender Raku

Bien, ahora podemos hablar con el programa. ¡Y podemos hacer que nos hable!

Ten en cuenta que `say` necesita conocer las cadenas antes de imprimirlas. Por eso Raku ejecuta primero `prompt`. Así el diálogo sigue el orden correcto:

```console
$ raku t.raku 
¿Qué idioma vas a aprender? Raku
Vas a aprender Raku
```

{% include nav.html %}
