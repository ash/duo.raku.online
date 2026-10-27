---
title: Flujos estándar
translations_gpt:
---

{% include menu.html %}

Todo programa tiene tres _flujos estándar_ que lo conectan con su entorno. Son la salida estándar, el error estándar y la entrada estándar. Raku te los da con tres variables especiales: `$*OUT`, `$*ERR` y `$*IN`.

De hecho, llevas escribiendo en la salida estándar desde el principio. Tanto `say` como `print` mandan su texto a `$*OUT`.

```raku
say 'Hello'; # goes to standard output
```

Los mensajes de error y otros mensajes sobre problemas van a un flujo aparte, el error estándar. Así no se mezclan con la salida real del programa. La rutina `note` escribe ahí:

```raku
note 'Something looks wrong'; # goes to standard error
```

Mantenerlos aparte es útil porque puedes redirigir cada flujo por separado. Por ejemplo, puedes guardar la salida de un programa en un archivo. Sus mensajes de error siguen apareciendo en la pantalla.

También puedes escribir directamente en los flujos. Tanto `$*OUT` como `$*ERR` son _manejadores_ con sus propios métodos `say` y `print`:

```raku
$*OUT.say('a normal line');
$*ERR.say('a diagnostic line');
```

El tercer flujo, `$*IN`, es la entrada estándar. Ya la has usado, pero no directamente: `prompt` lee una línea de ella. Volveremos a la lectura de la entrada en el tema sobre los [manejadores de archivo](/es/oop/file-handles). Esto pasa porque `$*IN` es un manejador, igual que un archivo abierto.

{% include nav.html %}
