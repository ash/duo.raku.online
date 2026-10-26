---
title: 'Solution: Un MAIN tipado'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
sub MAIN(Int $n) {
    say $n * 2;
}
```

🦋 Puedes encontrar el código fuente en el archivo [typed-main.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/typed-main.raku).

## Salida

```console
$ raku typed-main.raku 5
10

$ raku typed-main.raku abc
Usage:
  typed-main.raku <n>
```

## Comentarios

1. El tipo `Int` significa que la palabra de la línea de comandos debe parecer un entero. Con `5`, el valor va a `$n`, y el cuerpo imprime `10`.

1. Con `abc`, el valor no puede convertirse en un `Int`, así que la firma no coincide. Raku no ejecuta el cuerpo. En su lugar, imprime el mensaje de uso que ha generado. Así que Raku comprueba los argumentos por ti. No necesitas escribir ninguna comprobación tú mismo.

{% include nav.html %}
