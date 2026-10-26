---
title: Un flag de línea de comandos
translations_gpt:
---

{% include menu.html %}

## Problema

Un parámetro con nombre de `MAIN` puede tener el tipo `Bool`. Entonces se convierte en una **bandera**. Una bandera está activada o desactivada. Si escribes `--flag`, vale `True`. Si no la escribes, mantiene su valor predeterminado. Escribe un programa con `MAIN`. Toma `Bool :$shout = False`. Con la bandera, el programa imprime `HELLO`. Sin la bandera, imprime `hello`.

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
