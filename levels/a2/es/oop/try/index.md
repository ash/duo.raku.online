---
title: 'Capturar excepciones con `try`'
translations_gpt:
---

{% include menu.html %}

A veces algo sale mal en un programa de Raku. Por ejemplo, falta un archivo, o el código llama a `die`. Entonces el programa lanza un error. Este tipo de error se llama _excepción_. Si ningún código maneja la excepción, el programa se detiene. Así funciona por defecto. El bloque `try` ayuda aquí. Es un bloque de código con la palabra `try` delante. El código de este bloque puede fallar. Pero el programa no se cae.

Pones el código que puede fallar en un bloque `try`. A lo mejor el código lanza una excepción dentro del bloque. Entonces el bloque se detiene en ese punto. Pero el programa sigue:

```raku
my $result = try {
    die 'Boom!';
};

say "Still works";
```

El `try` captura el `die`. Así que el programa no se cae. Pasa directamente a la instrucción siguiente. Imprime:

```
Still works
```

Aquí, el bloque falla. Entonces da un valor no definido. Así que `$result` no está definido:

```raku
say $result.defined; # False
```

Raku guarda la excepción capturada en la variable especial `$!`. Desde ahí puedes leer el mensaje de la excepción:

```raku
say $!.message; # Boom!
```

Así que `try` ayuda con un error fatal. Sin `try`, un error así detiene el programa. Con `try`, tu programa puede mirar el error. Después puede reaccionar a él. ¿Y si el bloque se ejecuta sin ninguna excepción? Entonces `$result` contiene el valor del bloque. En este caso, `$!` no está definida.

{% include nav.html %}
