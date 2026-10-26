---
title: Un MAIN tipado
translations_gpt:
---

{% include menu.html %}

## Problema

Un parámetro de `MAIN` puede tener un tipo. Raku también comprueba este tipo antes de ejecutar el cuerpo. Escribe un programa con `MAIN`. Toma un parámetro, `Int $n`. Imprime `$n` multiplicado por dos. ¿Y si el argumento no es un entero correcto? Entonces la firma no coincide. Raku imprime el mensaje de uso en su lugar. Así que Raku comprueba el argumento por ti, y no haces ningún trabajo extra.

## Ejemplo

```console
$ raku typed-main.raku 5
10

$ raku typed-main.raku abc
Usage:
  typed-main.raku <n>
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
