---
title: Leer la constante
translations_gpt:
---

{% include menu.html %}

## Problema

Tienes un módulo en un archivo `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Escribe un programa que cargue este módulo con `need`, no con `use`. Debe imprimir el valor de `$pi`. Recuerda que `need` no importa nombres. Así que accedes a la variable a través del nombre del módulo.

## Ejemplo

```console
$ raku -I. read-pi.raku
3.14
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
