---
title: Un MAIN tipado
translations_gpt:
---

{% include menu.html %}

## Problema

Raku también comprueba el tipo de un parámetro de `MAIN` antes de ejecutar el cuerpo. Escribe un programa cuyo `MAIN` tome un único `Int $n` e imprima `$n` multiplicado por dos. Si el argumento no es un entero válido, la firma no coincide. Entonces Raku imprime en su lugar el mensaje de uso, así que tienes la comprobación gratis.

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
