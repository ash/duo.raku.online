---
title: Más sobre subrutinas MAIN
translations_gpt:
---

{% include menu.html %}

En la parte de Esenciales, usaste `MAIN` [para recibir argumentos de la línea de comandos](/es/essentials/the-main-function/reading-command-line-arguments). Pero Raku hace por ti con `MAIN` más cosas que solo pasar los valores.

## El mensaje de uso

A veces los argumentos de la línea de comandos no encajan con la firma de `MAIN`. En ese caso, Raku no ejecuta el cuerpo. En su lugar, imprime un _mensaje de uso_, que Raku crea automáticamente. El mensaje explica cómo llamar al programa.

Echa un vistazo a este programa:

```raku
sub MAIN($name) {
    say "Hello, $name!";
}
```

Si lo llamas correctamente, saluda a la persona:

```console
$ raku hello.raku Anna
Hello, Anna!
```

Si lo llamas sin ningún argumento, la firma no coincide. Así que Raku imprime el mensaje de uso en lugar del saludo:

```console
$ raku hello.raku
Usage:
  hello.raku <name>
```

Raku construye el mensaje a partir de los nombres de los parámetros. Así que dales nombres claros, y tendrás un texto de ayuda útil gratis.

## Argumentos con nombre

Los parámetros de `MAIN` pueden ser con nombre además de posicionales. Un parámetro con nombre se convierte en una opción de la línea de comandos como `--option=value`. Si tiene un valor predeterminado, la opción no es obligatoria:

```raku
sub MAIN(:$name = 'World') {
    say "Hello, $name!";
}
```

```console
$ raku hello.raku
Hello, World!

$ raku hello.raku --name=Raku
Hello, Raku!
```

{% include nav.html %}
