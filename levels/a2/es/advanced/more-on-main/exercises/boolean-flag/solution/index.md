---
title: 'Solution: Un flag de línea de comandos'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Un parámetro con nombre de tipo `Bool` se convierte en una bandera. Con `--shout`, `$shout` vale `True`. Sin ella, `$shout` mantiene el valor predeterminado, `False`.

1. Después, el operador ternario imprime `HELLO` o `hello`. Una opción `--name=value` tiene un valor. Una bandera no tiene valor. Solo importa una cosa: ¿está ahí la bandera o no está?

{% include nav.html %}
