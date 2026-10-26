---
title: 'Solution: Un MAIN tipado'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. El parámetro tiene el tipo `Int`. Así que la palabra de la línea de comandos debe parecer un entero. El valor `5` va a `$n`. Después, el cuerpo imprime `10`.

1. El valor `abc` no puede convertirse en un `Int`. Así que la firma no coincide. Raku no ejecuta el cuerpo. En su lugar, imprime el mensaje de uso. Raku crea este mensaje por sí mismo. Así que Raku comprueba los argumentos por ti. Tú no escribes ninguna comprobación.

{% include nav.html %}
