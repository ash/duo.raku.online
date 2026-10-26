---
title: 'Solution: Un flag de línea de comandos'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
sub MAIN(Bool :$shout = False) {
    say $shout ?? 'HELLO' !! 'hello';
}
```

🦋 Puedes encontrar el código fuente en el archivo [boolean-flag.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/more-on-main/boolean-flag.raku).

## Salida

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Comentarios

1. Un parámetro con nombre de tipo `Bool` se convierte en una bandera. Pasar `--shout` le da a `$shout` el valor `True`. Si no la pasas, mantiene el valor predeterminado `False`.

1. El operador ternario imprime entonces `HELLO` o `hello`, según la bandera. Una opción `--name=value` tiene un valor, pero una bandera no lo tiene. Lo único que cuenta es si la bandera está ahí.

{% include nav.html %}
