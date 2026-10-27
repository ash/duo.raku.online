---
title: 'Solución: Pase una variable a un proceso hijo'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my $file = 'notes.txt';
spurt $file, "one\ntwo\nthree\n";

%*ENV<NOTES> = $file;

my $proc = shell 'wc -l < "$NOTES"', :out;
say $proc.out.slurp(:close).trim;

unlink $file;
```

🦋 Puedes encontrar el código fuente en el archivo [read-env.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/external-programs/read-env.raku).

## Salida

```
3
```

## Comentarios

1. `spurt` crea `notes.txt` con tres líneas. Después ponemos el nombre del archivo en `%*ENV<NOTES>`. Así el nombre del archivo ya está en el entorno. Cada programa hijo recibe este entorno.

1. La orden de `shell` recibe este entorno. Cambia `$NOTES` por `notes.txt`. Después envía el archivo a `wc -l`. `wc -l` cuenta las líneas del archivo. La redirección `< "$NOTES"` es importante. Gracias a ella, la salida es solo el número `3`. Capturamos este número con `:out` y lo limpiamos con trim.

1. Al final, limpiamos en Raku con `unlink`. No necesitamos una shell para esto. Borrar un archivo es una operación simple del sistema de archivos. Así que no hay motivo para iniciar otro proceso para eso. Un proceso es un programa en marcha.

{% include nav.html %}
