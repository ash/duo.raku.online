---
title: Un flag de línea de comandos
translations_gpt:
---

{% include menu.html %}

## Problema

Un parámetro con nombre de tipo `Bool` en `MAIN` se convierte en una **bandera**, que está activada o desactivada. Escribir `--flag` le da el valor `True`, y no escribirla mantiene su valor predeterminado. Escribe un programa cuyo `MAIN` tome `Bool :$shout = False`. Debe imprimir `HELLO` cuando la bandera está activada, y `hello` cuando no lo está.

## Ejemplo

```console
$ raku boolean-flag.raku
hello

$ raku boolean-flag.raku --shout
HELLO
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
