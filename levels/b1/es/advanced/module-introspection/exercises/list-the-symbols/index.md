---
title: Listar los símbolos
---

{% include menu.html %}

## Problema

Tienes un módulo en el archivo `Circle.rakumod`, que define dos variables `our`:

```raku
unit module Circle;

our $pi = 3.14;
our $tau = 6.28;
```

Escribe un programa que use el módulo. Primero, el programa imprime cuántos nombres define el paquete del módulo. Después imprime los nombres mismos en orden alfabético.

## Ejemplo

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Solución

✅ [Ve la solución](solution)

{% include nav.html %}
