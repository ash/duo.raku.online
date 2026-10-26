---
title: Leer la constante
translations_gpt:
---

{% include menu.html %}

## Problema

Aquí tienes un módulo en el archivo `Circle.rakumod`:

```raku
unit module Circle;

our $pi = 3.14;
```

Escribe un programa. El programa carga este módulo con `need`, no con `use`. Luego imprime el valor de `$pi`. Recuerda: `need` no importa nombres. Así que llegas a la variable a través del nombre del módulo.

## Ejemplo

```console
$ raku -I. read-pi.raku
3.14
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
