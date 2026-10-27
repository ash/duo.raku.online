---
title: 'Solución: Pase una variable a un proceso hijo'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. `spurt` crea `notes.txt` con tres líneas. Después ponemos su nombre en `%*ENV<NOTES>`. Esto pone el nombre del archivo en el entorno, que recibe cada programa hijo.

1. La orden de `shell` recibe ese entorno y cambia `$NOTES` por `notes.txt`. Después envía el archivo a `wc -l`, que cuenta sus líneas. Gracias a la redirección `< "$NOTES"`, la salida es solo el número `3`. Lo capturamos con `:out` y lo limpiamos con trim.

1. Por último, la limpieza se hace otra vez en Raku con `unlink`, y no hace falta ninguna shell. Borrar un archivo es una operación simple del sistema de archivos. No hay motivo para iniciar otro proceso para eso.

{% include nav.html %}
