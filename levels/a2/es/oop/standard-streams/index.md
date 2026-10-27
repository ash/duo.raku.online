---
title: Flujos estándar
translations_gpt:
---

{% include menu.html %}

Todo programa tiene tres _flujos estándar_. Un flujo lleva texto hacia dentro o hacia fuera de un programa. Los tres flujos conectan el programa con el mundo exterior. Son la salida estándar, el error estándar y la entrada estándar. Raku te da tres variables especiales para ellos: `$*OUT`, `$*ERR` y `$*IN`.

La salida estándar es para la salida normal de un programa. Ya la usas todo el tiempo. `say` y `print` mandan su texto a `$*OUT`.

```raku
say 'Hello'; # goes to standard output
```

Los mensajes de error y otros mensajes sobre problemas van al error estándar. Es un flujo aparte. Así que estos mensajes no se mezclan con la salida real del programa. La rutina `note` escribe en el error estándar:

```raku
note 'Something looks wrong'; # goes to standard error
```

Esto es útil. Puedes mandar cada uno de los dos flujos a un sitio distinto. Esto se llama redirigir. Por ejemplo, puedes guardar la salida en un archivo. Pero sigues viendo los mensajes de error en la pantalla.

También puedes escribir directamente en los flujos. `$*OUT` y `$*ERR` son _manejadores_. Con un manejador, un programa puede escribir o leer datos. Cada manejador tiene sus propios métodos `say` y `print`:

```raku
$*OUT.say('a normal line');
$*ERR.say('a diagnostic line');
```

El tercer flujo, `$*IN`, es la entrada estándar. Lleva texto al programa, por ejemplo desde el teclado. Ya la usaste, pero no directamente. La función `prompt` lee una línea de ella. Volvemos a la lectura de la entrada en la página sobre [manejadores de archivo](/es/oop/file-handles). Esto pasa porque `$*IN` es un manejador, igual que un archivo abierto.

{% include nav.html %}
