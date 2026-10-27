---
title: 'Solución: Pase un manejador a una función'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
sub log-line($fh, $message) {
    $fh.say($message);
}

my $fh = open 'log.txt', :w;
log-line($fh, 'started');
log-line($fh, 'working');
log-line($fh, 'done');
$fh.close;

print slurp 'log.txt';
```

🦋 Puedes encontrar el código fuente en el archivo [pass-a-handle.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/file-handles/pass-a-handle.raku).

## Salida

```
started
working
done
```

## Comentarios

1. `open` devuelve un manejador. Este manejador es solo un valor en `$fh`. Así que puedes pasarlo a `log-line` como argumento. Haces lo mismo con una cadena o un número. Dentro de la subrutina, `$fh.say` escribe con este mismo manejador abierto.

1. El manejador sigue abierto durante las tres llamadas. Así que cada `log-line` añade una línea al final del mismo archivo. Después `close` escribe todo en el disco. `slurp` vuelve a leer las tres líneas.

1. Así es fácil combinar los manejadores con funciones. Una función puede recibir un manejador. Puede escribir en él o leer de él. No le importa de qué archivo es el manejador. El código que llama a la función elige el archivo. Lo hace cuando abre el archivo.

{% include nav.html %}
