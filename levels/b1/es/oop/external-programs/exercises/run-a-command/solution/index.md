---
title: 'Solución: Ejecute un comando'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
run 'echo', 'home:', '$HOME';
```

🦋 Puedes encontrar el código fuente en el archivo [run-a-command.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/run-a-command.raku).

## Salida

```
home: $HOME
```

## Comentarios

1. `run` inicia `echo` directamente y pasa cada cadena como un argumento separado. Sin `:out`, la salida del programa va directa a la pantalla.

1. El argumento llega a `echo` exactamente como está escrito. `$HOME` se imprime tal cual, y no se cambia por tu carpeta personal. Esto pasa porque no hay ninguna shell que lo cambie. Por eso `run` es la opción segura por defecto. La misma orden dada a `shell` podría funcionar de forma muy distinta.

1. Para imprimir de verdad la carpeta personal, deja que una shell cambie la variable. `shell 'echo home: $HOME'` imprime algo como `home: /home/anna`. Mantén también las comillas simples del lado de Raku. Unas comillas dobles, `"$HOME"`, causarían un problema. Raku mismo intentaría poner una variable llamada `$HOME` en la cadena. Esto pasaría incluso antes de ejecutar `echo`.

{% include nav.html %}
