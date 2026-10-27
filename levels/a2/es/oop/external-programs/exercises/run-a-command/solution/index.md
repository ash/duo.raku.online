---
title: 'Solución: Ejecute un comando'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `run` inicia `echo` directamente. Pasa cada cadena como un argumento separado. No hay `:out`. Así que la salida del programa va directa a la pantalla.

1. El argumento llega a `echo` justo como lo escribiste. Así que el programa imprime `$HOME` tal cual. No lo cambia por tu carpeta personal. Esto pasa porque no hay ninguna shell. Una shell lo cambiaría. Por eso `run` es la opción segura por defecto. Con `shell`, la misma orden puede funcionar de forma muy distinta.

1. ¿De verdad quieres imprimir la carpeta personal? Entonces deja que una shell cambie la variable. `shell 'echo home: $HOME'` imprime algo como `home: /home/anna`. Mantén también las comillas simples en el código de Raku. Con comillas dobles, `"$HOME"`, hay un problema. Raku mismo intenta poner su propia variable `$HOME` en la cadena. Esto pasa antes de que `echo` se ejecute.

{% include nav.html %}
