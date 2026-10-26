---
title: Listar los símbolos
---

{% include menu.html %}

## Problema

Aquí tienes un módulo en el archivo `Circle.rakumod`. Tiene dos variables `our`:

```raku
unit module Circle;

our $pi = 3.14;
our $tau = 6.28;
```

Escribe un programa. El programa usa el módulo. Primero, imprime cuántos nombres hay en el paquete del módulo. Luego imprime los nombres. Deben estar en orden alfabético.

## Ejemplo

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Solución

✅ [Ve la solución](solution)

{% include nav.html %}
