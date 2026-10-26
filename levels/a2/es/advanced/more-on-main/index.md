---
title: Más sobre subrutinas MAIN
translations_gpt:
---

{% include menu.html %}

En la parte de Esenciales, usaste `MAIN` [para recibir argumentos de la línea de comandos](/es/essentials/the-main-function/reading-command-line-arguments). Raku hace más cosas por ti con `MAIN`. No solo pasa los valores.

## El mensaje de uso

A veces los argumentos de la línea de comandos no coinciden con la firma de `MAIN`. La firma es su lista de parámetros. Entonces Raku no ejecuta el cuerpo. En su lugar, imprime un _mensaje de uso_. Raku crea este mensaje por sí mismo. El mensaje muestra cómo ejecutar el programa.

Mira este programa:

```raku
sub MAIN($name) {
    say "Hello, $name!";
}
```

Ejecútalo de la forma correcta. Entonces saluda a la persona:

```console
$ raku hello.raku Anna
Hello, Anna!
```

Ahora ejecútalo sin ningún argumento. La firma no coincide. Así que Raku imprime el mensaje de uso. No saluda:

```console
$ raku hello.raku
Usage:
  hello.raku <name>
```

Raku crea el mensaje con los nombres de los parámetros. Así que da buenos nombres a los parámetros. Entonces el texto de ayuda es útil, y no haces ningún trabajo extra.

## Argumentos con nombre

`MAIN` puede tener parámetros posicionales. También puede tener parámetros con nombre. En la línea de comandos, un parámetro con nombre se convierte en una opción como `--option=value`. Puedes darle un valor predeterminado. Entonces la opción no es obligatoria:

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
